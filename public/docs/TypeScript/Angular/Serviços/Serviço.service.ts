// Generate Service

// Criando um serviço injetável
@Injectable({
  // Define em qual local é possível injetar o serviço, 'root' faz ele ser usavél em toda aplicação
  // Não definir para determinar que são os componentes que dizem quais serviços usaram
  providedIn: 'root'
})
export class MeuService {
  baseURL = 'https://localhost:5001/evento';

	// Injetando um serviço no método construtor
  constructor(private http: HttpClient) { }

  obterEvento(): Observable<Aluno> {
    return this.http.get<Aluno>(this.baseURL);
  }

}