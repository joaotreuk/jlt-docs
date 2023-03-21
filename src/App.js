import { useEffect, useRef, useState } from "react";
import Accordion from 'react-bootstrap/Accordion';
import { useAccordionButton } from 'react-bootstrap/AccordionButton';
import Button from 'react-bootstrap/Button';
import Container from 'react-bootstrap/Container';
import ListGroup from 'react-bootstrap/ListGroup';
import Offcanvas from 'react-bootstrap/Offcanvas';
import Modal from 'react-bootstrap/Modal';
import Navbar from 'react-bootstrap/Navbar';
import Tab from 'react-bootstrap/Tab';
import Tabs from 'react-bootstrap/Tabs';
import { FontAwesomeIcon } from '@fortawesome/react-fontawesome';
import { faBars } from '@fortawesome/free-solid-svg-icons';
import hljs from 'highlight.js';
import './App.css';

const CodeBlock = ({ language, code }) => {
	const codeRef = useRef(null);

	useEffect(() => hljs.highlightElement(codeRef.current), [code]);
	
	return (
		<pre>
			<code ref={codeRef} className={`${language} bg-dark text-white`}>
				{code}
			</code>
		</pre>
	);
};

function CustomToggle({ children, eventKey }) {
	const [expanded, setExpanded] = useState(false);
	const decoratedOnClick = useAccordionButton(eventKey, () => setExpanded(!expanded));

	return (
		<Button variant="none" className={"btn-toggle d-inline-flex align-items-center rounded border-0 collapsed fw-semibold text-white"
			+ (expanded ? ' expanded' : '')} onClick={decoratedOnClick}
		>
			{children}
		</Button>
	);
}

function App() {
	const [arquivoSelecionado, setArquivoSelecionado] = useState();
	const [conteudo, setConteudo] = useState();
	const [pastas, setPastas] = useState([]);
	const [pastaSelecionada, setPastaSelecionada] = useState({});
	const [showOffcanvas, setShowOffcanvas] = useState(true);
	const [showModal, setShowModal] = useState(false);
	const [tabsActiveKey, setTabsActiveKey] = useState();

	// Ao clicar em um item da modal
	const arquivoClick = arquivo => {
		setShowModal(false);
		setShowOffcanvas(false);
		setArquivoSelecionado(arquivo);
	};

	// Obter o conteúdo que é exibido na tela
	const fetchConteudo = async () => {
		let itens,
			dados = [],
			pastaPai;

		// Se for um item de tipo pasta vai pegar todos os itens filhos
		if (arquivoSelecionado.children) {
			itens = arquivoSelecionado.children;
			pastaPai = arquivoSelecionado.name + '/';
		} else {
			itens = [arquivoSelecionado.name];
			pastaPai = '';
		}

		for (const item of itens) {
			const caminhoArquivo = `docs/${pastaSelecionada.lang.id}/${pastaSelecionada.name}/${pastaPai}${item}`
				+ `.${pastaSelecionada.lang.fileExtension}`;
			const retorno = await (await fetch(caminhoArquivo)).text();
			dados.push(await lerArquivo(retorno));
		}

		setConteudo(dados);
	};

	// Ler arquivo baixado por fetch
	const lerArquivo = arquivo => {
		return new Promise((resolve, reject) => {
			const reader = new FileReader();

			reader.onload = () => {
				resolve(reader.result);
			};

			reader.onerror = () => {
				reject(reader.error);
			};

			reader.readAsText(new Blob([arquivo]));
		});
	};

	// Clique no sub item do menu
	const subPastaClick = (pasta, subPasta) => {
		// Se for um arquivo abre
		if (subPasta.file) {
			window.open(`docs/${pasta.id}/${subPasta.file}`, '_blank');
			return;
		}

		setPastaSelecionada({
			lang: pasta,
			...subPasta
		});
		setShowModal(true);
	};

	// Ao iniciar o componente ler o JSON com os dados dos arquivos de documentação
	useEffect(() => {
		fetch("docs.json")
			.then(response => response.json())
			.then(dados => setPastas(dados.map(x => {
				x.id = x.id || x.name;
				return x;
			})));
	}, []);

	// Fetch no arquivo quando a seleção de arquivo for alterada
	useEffect(() => {
		if (!pastaSelecionada.lang)
			return;

		fetchConteudo();
	}, [arquivoSelecionado]);
	
	useEffect(() => {
		if (arquivoSelecionado?.children?.length > 0) {
			setTabsActiveKey(arquivoSelecionado.children[0]);
		}
	}, [arquivoSelecionado?.children]);

	return (
		<div className="bg-dark min-vh-100" data-bs-theme="dark">
			<Navbar bg="primary">
				<Container fluid>
					<Button onClick={() => setShowOffcanvas(true)}>
						<FontAwesomeIcon icon={faBars} />
					</Button>
				</Container>
			</Navbar>

			<Container className="bg-dark" fluid>
				<h2 className="text-white ms-3 mt-3">
					{arquivoSelecionado?.name}
				</h2>
				{conteudo && <>
					{(!arquivoSelecionado.children) && <CodeBlock language={pastaSelecionada.lang?.id || 'javascript'} code={conteudo[0]} />}
					{arquivoSelecionado.children && (
						<Tabs className="mt-3" activeKey={tabsActiveKey} onSelect={key => setTabsActiveKey(key)}>
							{arquivoSelecionado.children.map((item, i) => <Tab eventKey={item} className="text-light" key={item} title={item}>
								<CodeBlock language={pastaSelecionada.lang?.id || 'javascript'} code={conteudo[i]} />
							</Tab>)}
						</Tabs>
					)}
				</>}
			</Container>

			<Offcanvas className="text-bg-dark" show={showOffcanvas} onHide={() => setShowOffcanvas(false)}>
				<Offcanvas.Header closeButton closeVariant="white">
					<Offcanvas.Title>Codes</Offcanvas.Title>
				</Offcanvas.Header>
				<Offcanvas.Body>
					<ul className="list-unstyled ps-0">
						{pastas.map(pasta => <li className="mb-1" key={pasta.id}>
							<Accordion>
								<CustomToggle eventKey={pasta.id}>
									{pasta.name}
								</CustomToggle>
								<Accordion.Collapse eventKey={pasta.id}>
									<ul className="btn-toggle-nav list-unstyled fw-normal pb-1 small">
										{pasta.children.map(subPasta => <li key={subPasta.name}>
											<a href="#"
												className={`link-light d-inline-flex text-decoration-none rounded${(subPasta.file ? ' trigger-file' : '')}`}
												onClick={() => subPastaClick(pasta, subPasta)}
											>
												{subPasta.name}
											</a>
										</li>)}
									</ul>
								</Accordion.Collapse>
							</Accordion>
						</li>)}
					</ul>
				</Offcanvas.Body>
			</Offcanvas>

			<Modal show={showModal} onHide={() => setShowModal(false)}>
				<Modal.Header closeButton>
					<Modal.Title>{`${pastaSelecionada.lang?.name} - ${pastaSelecionada.name}`}</Modal.Title>
				</Modal.Header>
				<Modal.Body>
					<ListGroup>
						{pastaSelecionada.children?.map(arquivo => {
							if (!arquivo.name)
								arquivo = { name: arquivo };

							return <ListGroup.Item action key={arquivo.name} onClick={() => arquivoClick(arquivo)}>
								{arquivo.name}
							</ListGroup.Item>;
						})}
					</ListGroup>
				</Modal.Body>
			</Modal>
		</div>
	);
}

export default App;
