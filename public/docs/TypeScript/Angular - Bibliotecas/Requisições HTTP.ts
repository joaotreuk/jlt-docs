import { HttpClient } from '@angular/common/http';

let http: HttpClient;

// Fazendo uma requisição GET
http.get('https://localhost:5001/Metodo').subscribe(
    resposta => {
        console.log(resposta);
    },
    error => {
        console.log(error);
    }
);

// Adicionando um cabeçalho
let header: HttpHeaders = new HttpHeaders({ 'Authorization': 'Meu token' });

// Métodos
let obter: any = http.get('url', { headers: header }); // Passando um cabeçalho do HTTP
let postar: any = http.post('url', objetoParaEnviar); // Fazendo uma requisição POST
postar = http.post('url', objetoParaEnviar, { headers: header }); // Passando um cabeçalho do HTTP
let put: any = http.put('url/id', objetoParaEnviar); // Fazendo uma requisição PUT
let deletar: any = http.delete('url/id'); // Fazendo uma requisição Delete

// Mapeando o retorno de uma requisição para uma classe
let observador: Observable<Aluno> = http.get<Aluno>('url');
observador.subscribe(
    (aluno: Aluno) => {} // A resposta será mapeado para a classe do retorno
);

// Mapeando o retorno de uma requisição
observador.pipe(map((response: any) => {
    console.log(response);
}))