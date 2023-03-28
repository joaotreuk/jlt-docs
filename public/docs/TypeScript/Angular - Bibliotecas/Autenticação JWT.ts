// npm i @auth0/angular-jwt
import { JwtHelperService } from '@auth0/angular-jwt';

// Inicializa um auxiliar do JWT
let jwtHelper = new JwtHelperService();

// Métodos
let decodedToken = jwtHelper.decodeToken('meuToken'); // Decodifica o token para um objeto
let expirado: boolean = jwtHelper.isTokenExpired('meuToken'); // Diz se o token expirou ou não