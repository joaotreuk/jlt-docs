// Componente para criação de rotas de aplicações SPA
import { Route } from 'react-router';
import { BrowserRouter } from 'react-router-dom';

// Pegando a URL principal
<base href="%PUBLIC_URL%/" />
const baseUrl = document.getElementsByTagName('base')[0].getAttribute('href');

ReactDOM.render(
  <BrowserRouter basename={baseUrl}>
    Componente em que os componentes das rotas seram aplicados
    <MeuLayout>
      <Route exact path='/' component={MeuComponente} /> Rota inicial
      <Route path='/Produtos' component={MeuComponente} />
    </MeuLayout>
  </BrowserRouter>,
  meuElemento
);