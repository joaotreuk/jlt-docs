// Entidade de segurança com gerenciamento de reivindicações do usuário
using System.Security.Claims;

/*-------------------- DECLARAÇÃO / ATRIBUIÇÃO --------------------*/
// Herda de IPrincipal (Bibliotecas Padrão -> Segurança -> Entidade de Segurança -> Entidade de Segurança)

// Obter a entidade de segurança atual
ClaimsPrincipal principal = ClaimsPrincipal.Current;

/*-------------------- PROPRIEDADES --------------------*/

// Coleção de Claims do usuário
IEnumerable<Claim> reivindicacoes = principal.Claims;

// Obtém ou define o delegado usado para selecionar a entidade de segurança de declarações retornada pela propriedade Current.
Func<ClaimsPrincipal> funcao = ClaimsPrincipal.ClaimsPrincipalSelector;

IEnumerable<ClaimsIdentity> identidades = principal.Identities;

// Obtém ou define o delegado usado para selecionar a identidade baseada em declarações retornada pela propriedade Identity.
Func<IEnumerable<ClaimsIdentity>, ClaimsIdentity> funcao = ClaimsPrincipal.PrimaryIdentitySelector;

/*-------------------- MÉTODOS --------------------*/

// Adiciona as identidades baseadas em declarações especificadas a esta entidade de segurança de declarações
principal.AddIdentities(identidades);

// Adiciona a identidade baseada em declarações especificada a esta entidade de segurança de declarações
principal.AddIdentity(identidade);

// Retorna uma cópia desta instância
ClaimsPrincipal clone = principal.Clone();

// Recupera todas as Claim que correspondem ao predicado especificado
IEnumerable<Claim> declaracoes = principal.FindAll("nomeDeclaracao");
IEnumerable<Claim> declaracoes = principal.FindAll(Predicate<Claim>); // Passando um predicado ao invés do nome da Claim

// Obter a primeira Claim com o nome específicado
Claim declaracao = principal.FindFirst("nomeDeclaracao");
Claim declaracao = principal.FindFirst(Predicate<Claim>); // Passando um predicado ao invés do nome da Claim

// Retorna se o usuário possuí a Claim com o valor passado ou não
bool contem = principal.HasClaim("nomeClaim", "valor");
bool contem = principal.HasClaim(Predicate<Claim>); // Passando um predicado

// Serializa usando um BinaryWriter
principal.WriteTo(BinaryWriter);
principal.WriteTo(BinaryWriter, bytes);