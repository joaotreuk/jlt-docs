/*
<!-- Importando o React e o Babel -->
<script src="https://unpkg.com/react@16.13.1/umd/react.production.min.js" crossorigin></script>
<script src="https://unpkg.com/react-dom@16.7.0/umd/react-dom.production.min.js" crossorigin></script>
<script>
    ReactDOM.render(componente, divExemplo);
</script>

<!-- Utilizando o babel -->
<script src="https://unpkg.com/babel-standalone@6.26.0/babel.min.js" crossorigin></script>
<!--  Usando scripts do babel -->
<script type="text/babel">
    ReactDOM.render(componente, divExemplo);
</script>

<!--  Importando o React Router -->
<script src='https://unpkg.com/react-router@5.0.0/umd/react-router.min.js'></script>
<script src='https://unpkg.com/react-router-dom@5.0.0/umd/react-router-dom.min.js'></script>

<!-- Utilizando o React Router -->
<script type="text/babel">
    const Link = ReactRouterDOM.Link,
        Route = ReactRouterDOM.Route;

    const App = props => (
        <ReactRouterDOM.HashRouter>
            <Route path="/" exact component={Componente} />
            <Route path="/SelecionarMaquina" component={TelaSelecionarMaquina} />
            <Link id="linkTeste" to="/SelecionarMaquina"></Link>
        </ReactRouterDOM.HashRouter>
    );

    ReactDOM.render(<App />, divExemplo);
</script>
*/