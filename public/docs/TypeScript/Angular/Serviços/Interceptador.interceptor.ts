// Interceptador de requisições HTTP de serviços

@Injectable({providedIn: 'root'})
export class NomeInterceptor implements HttpInterceptor {
	intercept(req: HttpRequest<any>, next: HttpHandler): Observable<HttpEvent<any>> {

        // Manipulando a requisição
        let novaRequisicao = req.clone(); // Clona a requisição, sem modificar a mesma
        novaRequisicao = req.clone({ headers: req.headers.set('Authorization', 'Meu token') }); // Adiciona um item para o cabeçalho da requisição

        let reencaminhacao = next.handle(novaRequisicao); // Reencaminhar a requisição, após a mesma ter sido clonada e modificada
        reencaminhacao = next.handle(novaRequisicao).pipe(tap(success => {}, error => {})); // Adicionando um gerenciador de sucesso/erro padrão para as requisições

        return reencaminhacao;
	}
}