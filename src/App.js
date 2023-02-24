import { useEffect, useRef, useState } from "react";
import Accordion from 'react-bootstrap/Accordion';
import { useAccordionButton } from 'react-bootstrap/AccordionButton';
import Button from 'react-bootstrap/Button';
import Container from 'react-bootstrap/Container';
import ListGroup from 'react-bootstrap/ListGroup';
import Offcanvas from 'react-bootstrap/Offcanvas';
import Modal from 'react-bootstrap/Modal';
import Navbar from 'react-bootstrap/Navbar';
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

	const arquivoClick = e => {
		setShowModal(false);
		setShowOffcanvas(false);
		setArquivoSelecionado(e.target.innerText);
	};

	const subPastaClick = (pasta, subPasta) => {
		setPastaSelecionada({
			lang: pasta,
			...subPasta
		});
		setShowModal(true);
	};

	useEffect(() => {
		// Carregar pastas
		fetch("docs.json")
			.then(response => response.json())
			.then(dados => setPastas(dados.map(x => {
				x.name = x.name || x.id;
				return x;
			})));
	}, []);

	// Fetch no arquivo quando a seleção de arquivo for alterada
	useEffect(() => {
		if (!pastaSelecionada.lang)
			return;

		fetch(`docs/${pastaSelecionada.lang.id}/${pastaSelecionada.name}/${arquivoSelecionado}.${pastaSelecionada.lang.fileExtension}`)
			.then(response => response.text())
			.then(data => {
				let reader = new FileReader();
				reader.onload = e => setConteudo(e.target.result);
				reader.readAsText(new Blob([data]));
			});
	}, [arquivoSelecionado]);

	return (
		<div className="bg-dark min-vh-100">
			<Navbar bg="primary">
    	  <Container fluid>
					<Button onClick={() => setShowOffcanvas(true)}>
						<FontAwesomeIcon icon={faBars} />
					</Button>
    	  </Container>
    	</Navbar>

			<Container fluid>
				<h2 className="text-white ms-3 mt-3">
					{arquivoSelecionado}
				</h2>
				<CodeBlock language={pastaSelecionada.lang?.id || 'javascript'} code={conteudo} />
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
											<a href="#" className="link-light d-inline-flex text-decoration-none rounded"
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
						{pastaSelecionada.children?.map(arquivo => <ListGroup.Item action key={arquivo} onClick={arquivoClick}>
							{arquivo}
						</ListGroup.Item>)}
    			</ListGroup>
				</Modal.Body>
			</Modal>
		</div>
	);
}

export default App;
