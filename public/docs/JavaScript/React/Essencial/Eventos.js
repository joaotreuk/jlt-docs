// Tipos de eventos
componente = <button onClick={funcao} />;
componente = <button onDoubleClick={funcao} />; // Evento ao clicar duas vezes

// Atribuição de métodos para componentes
<button onClick={this.meuMetodo}></button>; // Atribuindo um método interno do componente
<button onClick={(evento) => MinhaFuncao(evento)}></button>; // Atribuindo uma função externa

// Usar o 'this' do componente em um evento
this.meuMetodo = this.meuMetodo.bind(this); // É necessário fazer uma vinculação do método com o componente no construtor
meuMetodo() { console.log(this); }

// Obtendo o evento do elemento por um método vinculado, o evento sempre será o primeiro parâmetro de métodos vinculados
botaoClick(evento) { console.log(evento.target) }