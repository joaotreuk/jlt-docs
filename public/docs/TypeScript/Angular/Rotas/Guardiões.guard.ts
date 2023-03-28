// Guardiões servem para definir segurança de acesso de rotas

@Injectable({
  providedIn: 'root'
})
export class AuthGuard implements CanActivate {
	// O método retorna se permite ou não ativar a rota com base em uma condição
  canActivate(route: ActivatedRouteSnapshot, state: RouterStateSnapshot): boolean {
    if (condicao) {
      return true;
    } else {
      return false;
    }    
  }  
}