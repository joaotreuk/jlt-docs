using Microsoft.AspNetCore.Identity.EntityFrameworkCore;

// Base da classe de contexto de banco de dados do Identity
// Dessa forma será criado as tabelas com suas devidas conexões e funcionamentos entre elas
public class MeuBdContexto : IdentityDbContext<MinhaUser, MinhaRole, int, IdentityUserClaim<int>, MinhaUserRole, IdentityUserLogin<int>, IdentityRoleClaim<int>, IdentityUserToken<int>>{}

// Herdando da classe de usuário do Identity
public class Usuario : IdentityUser{}
public class Usuario : IdentityUser<int>{} // Definindo o tipo do campo identificador
/* Campos autogerados
    UserName = Nome de acesso
    NormalizedUserName = Nome de acesso com tudo em letras maiúsculas, para normalização
*/

// Herdando da classe de papéis para usuários
public class Role : IdentityRole{}
public class Role : IdentityRole<int>{} // Definindo o tipo do campo identificador

// Herdando da classe de ligação entre usuários e os seus papéis
public class UserRole : IdentityUserRole<int>{}

// Definindo para a classe de contexto do banco
base.OnModelCreating(modelBuilder);
modelBuilder.Entity<UserRole>(userRole => 
{
    // Definindo o relacionamento de muitos para muitos entre o usuário e o papel
    userRole.HasKey(ur => new {ur.UserId, ur.RoleId});
    userRole.HasOne(ur => ur.Role).WithMany(r => r.UserRoles).HasForeignKey(ur => ur.RoleId).IsRequired();
    userRole.HasOne(ur => ur.User).WithMany(u => u.UserRoles).HasForeignKey(ur => ur.UserId).IsRequired();
});

#region Configurações no startup.cs
IdentityBuilder builder = services.AddIdentityCore<User>(options =>
{
    // Definindo opções de autenticação
    options.Password.RequireDigit = false; // Se é obrigatório um número na senha, padrão: true
    options.Password.RequireNonAlphanumeric = false; // Se é obrigatório um caractere não alfanúmerico na senha, padrão: true
    options.Password.RequireLowercase = false; // Se é obrigatório uma letra minúscula na senha, padrão: true
    options.Password.RequireUppercase = false; // Se é obrigatório uma letra maiúscula na senha, padrão: true
    options.Password.RequiredLength = 4; // Tamanho mínimo da senha, padrão: 6
});

// Definindo as classes criadas para suas devidas funções
builder = new IdentityBuilder(builder.UserType, typeof(Role), builder.Services);
builder.AddEntityFrameworkStores<ProAgilContexto>();
builder.AddRoleValidator<RoleValidator<Role>>();
builder.AddRoleManager<RoleManager<Role>>();
builder.AddSignInManager<SignInManager<User>>();

services.AddMvc(options =>
{
    // Faz requirir que o usuário esteja autenticado ao acessar uma rota de um controlador
    AuthorizationPolicy policy = new AuthorizationPolicyBuilder().RequireAuthenticatedUser().Build();

    // Filtra para ver se o usuário se aplica a politica requerida
    options.Filters.Add(new AuthorizeFilter(policy));
}).SetCompatibilityVersion(Microsoft.AspNetCore.Mvc.CompatibilityVersion.Version_3_0);
#endregion

// Criando um novo usuário
IdentityResult result = await UserManager.CreateAsync(user, "Senha");
bool inseridoComSucesso = result.Succeeded; // Retorna se o usuário foi criado com sucesso
IEnumerable<IdentityError> erros = result.Errors; // Retorna os erros ocorridos no caso de não ter conseguido criar o usuário

// Obtém o usuário pelo seu nome de login
User user = await UserManager.FindByNameAsync("joaotreuk");

// Gera um resultado comparando uma senha passada com a senha salva no banco de dados do usuário passado
// Terceiro parâmetro índica se trava o banco de dados ou não, no caso do login dar errado
SignInResult result = await SignInManager.CheckPasswordSignInAsync(user, "minha senha", false);
bool autenticado = result.Succeeded; // Retorna se ocorreu sucesso na autenticação ou não

// Lista da classe declarada como classe de usuário
IQueryable<User> usuarios = UserManager.Users;

// Gerando um token de acesso
List<Claim> claims = new List<Claim>(); // Criando uma lista de reivindicações do usuário que receberá o token
claims.Add(new Claim(ClaimTypes.NameIdentifier, user.Id.ToString())); // Adicionando uma reivindicação do identificador do usuário
claims.Add(new Claim(ClaimTypes.Name, user.UserName)); // Adicionando uma reivindicação do nome de acesso do usuário
IList<string> roles = await UserManager.GetRolesAsync(user); // Obtendo uma lista dos papéis do usuário
foreach (string role in roles) { claims.Add(new Claim(ClaimTypes.Role, role)); } // Adicionando uma reivindicação para cada papel do usuário
SymmetricSecurityKey key = new SymmetricSecurityKey(Encoding.ASCII.GetBytes(Config.GetSection("AppSettings:Token").Value)); // Obtém a chave salva nas configurações
SigningCredentials creds = new SigningCredentials(key, SecurityAlgorithms.HmacSha512Signature); // Obtém o tipo de credencial de login
SecurityTokenDescriptor tokenDescriptor = new SecurityTokenDescriptor(); // Cria um descritor do token
tokenDescriptor.Subject = new ClaimsIdentity(claims); // Adiciona as claims
tokenDescriptor.Expires = DateTime.Now.AddDays(1); // Adiciona a data de expiração
tokenDescriptor.SigningCredentials = creds; // Adiciona o tipo de credencial
JwtSecurityTokenHandler tokenHandler = new JwtSecurityTokenHandler(); // Cria um gerenciador do token
SecurityToken token = tokenHandler.CreateToken(tokenDescriptor); // Cria o token
string meuToken = tokenHandler.WriteToken(token); // Escreve o token gerado