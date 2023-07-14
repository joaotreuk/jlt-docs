// O descarte de variáveis é gerenciado automaticamente pelo coletor de lixo do .NET, não precisando se preocupar com o descarte delas
// O coletor de lixo lidará com a liberação de recursos desses objetos quando eles se tornarem inacessíveis, de forma assíncrona

/* Porém, existe objetos em que o descarte precisa ser manual, por exemplo, objetos que podem incluir conexões com bancos de dados,
arquivos abertos, handles de sistema, entre outros. Sendo assim o coletor de lixo .NET pode acabar não fazendo o dispose corretamente por
conta própria, por causa desses recursos não gerenciados. Além disso, também pode ter objetos que necessitam ter um ciclo de vida curto
e se deixar eles serem descartados pelo coletor de lixo fazerá eles terem um ciclo de vida maior que o ideal */
/* Esses objetos vão implementar da interface IDisposable, possuindo assim um método Dispose que deve ser chamado quando for terminar o
ciclo de vida do objeto */
public class Descartavel : IDisposable { }
public void Dispose() { }

// A cláusula using é usada para uma forma mais conveniente e segura de fazer o descarte de variáveis que implementam o IDisposable
// O Dispose será feito no final do escopo do using, mesmo se ocorra uma exceção no código
using (FileStream fileStream = new FileStream()) { }
using Classe classe = new Classe(); // Using simplificado, com o descarte ficando para o final do escopo em que o using está