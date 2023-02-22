import { useEffect, useState } from "react";
import Accordion from 'react-bootstrap/Accordion';
import { useAccordionButton } from 'react-bootstrap/AccordionButton';
import Offcanvas from 'react-bootstrap/Offcanvas';
import Modal from 'react-bootstrap/Modal';
import { FontAwesomeIcon } from '@fortawesome/react-fontawesome';
import { faBars } from '@fortawesome/free-solid-svg-icons';
import './App.css';

function CustomToggle({ children, eventKey }) {
	const [expanded, setExpanded] = useState(false);
	const decoratedOnClick = useAccordionButton(eventKey, () => setExpanded(!expanded));

	return (
		<button
			className={"btn btn-toggle d-inline-flex align-items-center rounded border-0 collapsed fw-semibold text-white"
				+ (expanded ? ' expanded' : '')}
			onClick={decoratedOnClick}
		>
			{children}
		</button>
	);
}

function App() {
	const [pastas, setPastas] = useState([]);
	const [showOffcanvas, setShowOffcanvas] = useState(true);
	const [showModal, setShowModal] = useState(false);

	const subPastaClick = subPasta => {
		console.log(subPasta.children);
		setShowModal(true);
	};

	useEffect(() => {
		//hljs.highlightAll();

		// Carregar pastas
		fetch("docs.json")
			.then(response => response.json())
			.then(setPastas);

		/* fetch("docs/cSharp/Arrays.txt")
			.then(response => response.text())
			.then(data => {
				// create a new FileReader object
				var reader = new FileReader();

				// define a function to handle the file data once it's loaded
				reader.onload = function (event) {
					// the file contents are stored in the result property
					var fileContents = event.target.result;
				};

				// read the contents of the file
				reader.readAsText(new Blob([data]));
			}); */
	}, []);

	return (
		<div className="bg-dark h-100">
			<nav className="navbar bg-primary">
				<form className="container-fluid justify-content-start">
					<button className="btn btn-primary" type="button" onClick={() => setShowOffcanvas(true)}>
						<FontAwesomeIcon icon={faBars} />
					</button>
				</form>
			</nav>

			<Offcanvas className="text-bg-dark" show={showOffcanvas} onHide={() => setShowOffcanvas(false)}>
				<Offcanvas.Header closeButton closeVariant="white">
					<Offcanvas.Title>Codes</Offcanvas.Title>
				</Offcanvas.Header>
				<Offcanvas.Body>
					<ul className="list-unstyled ps-0">
						{pastas.map(pasta => <li className="mb-1" key={pasta.id}>
							<Accordion>
								<CustomToggle eventKey={pasta.id}>
									{pasta.name || pasta.id}
								</CustomToggle>
								<Accordion.Collapse eventKey={pasta.id}>
									<ul className="btn-toggle-nav list-unstyled fw-normal pb-1 small">
										{pasta.children.map(subPasta => <li key={subPasta.name}>
											<a href="#" className="link-light d-inline-flex text-decoration-none rounded" onClick={() => subPastaClick(subPasta)}>
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
					<Modal.Title>Meu Modal</Modal.Title>
				</Modal.Header>
				<Modal.Body>
					<p>Aqui vai o conteúdo do seu modal.</p>
				</Modal.Body>
			</Modal>
			{/* <h1>Arrays</h1>

      <strong>Atribuição</strong>
      <pre>
        <code class="language-csharp" id="cod-atribuicao"></code>
      </pre> */}


			{/* <br />
      <br />
      <strong>Propriedades</strong>
      <br />

      <code>
        <span style="color: rgb(13, 103, 199)">int tamanho = matriz.Length;</span>
        <span style="color: green">// Obtém a quantidade de itens da array</span>
      </code>

      <h2>MÉTODOS</h2>

/// <summary>Copia um intervalo de uma Array para outra Array</summary>
///
      <param name="sourceArray">O Array que contém os dados a serem copiados</param>
///
      <param name="sourceIndex">Um inteiro de 64 bits que representa o índice no sourceArray no qual a cópia é iniciada
      </param>
///
      <param name="destinationArray">O Array que recebe os dados</param>
///
      <param name="destinationIndex">Um inteiro de 64 bits que representa o índice no destinationArray no qual o
        armazenamento é iniciado</param>
///
      <param name="length">Um inteiro de 64 bits que representa o número de elementos a se copiar. O inteiro deve estar
        entre zero e MaxValue, inclusive</param>
      Array.Copy(sourceArray, destinationArray, length); // Inicia por padrão no começo de cada array
      Array.Copy(sourceArray, sourceIndex, destinationArray, destinationIndex, length);

/// <summary>Faz um filtro na Array retornando uma nova Array com apenas os elementos que cumprem a condição
      </summary>
///
      <param name="array">O Array a ser procurado</param>
///
      <param name="match">O Predicate
        T(adicionar maior menor aqui) que define as condições dos elementos a serem pesquisados</param>
/// <returns>Um Array que contém todos os elementos que correspondem às condições definidas pelo predicado
        especificado, se encontrado; caso contrário, um Array vazio</returns>
      int[] matriz = Array.FindAll(array, match);

/// <summary>Obtém o índice da primeira ocorrência de um determinado item em uma array</summary>
///
      <param name="array">O Array a ser buscado o índice</param>
///
      <param name="value">Item cujo índice será buscado</param>
///
      <param name="startIndex">Índice inicial da busca</param>
///
      <param name="count">Número de itens a serem comparados com a busca a partir do startIndex</param>
/// <returns>Índice do item passado</returns>
      int indice = Array.IndexOf(array, value); // Pesquisa por toda array até encontrar
      int indice = Array.IndexOf(array, value, startIndex); // Pesquisa do índice passado até o final da array
      int indice = Array.IndexOf(array, value, startIndex, count);

/// <summary>Junta uma array em uma string separando os valores por: ','</summary>
/// <returns>String com a junção</returns>
      string String = string.Join("','", matriz); */}
		</div>
	);
}

export default App;
