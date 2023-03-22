// No arquivo Startup.cs, definindo a pasta em que ficam os arquivos estáticos
app.UseStaticFiles(new StaticFileOptions() {
    FileProvider = new PhysicalFileProvider(Path.Combine(Directory.GetCurrentDirectory(), "Resources")),
    RequestPath = new PathString("/Resources")
});

// Obtém o primeiro arquivo enviado pelo formulário na lista de arquivos
IFormFile arquivo = Request.Form.Files[0];

// Obtém o nome de um arquivo enviado em um formulário
string nomeArquivo = ContentDispositionHeaderValue.Parse(arquivo.ContentDisposition).FileName;

// Salvar um arquivo usando uma stream IO
arquivo.CopyTo(stream);
await arquivo.CopyToAsync(stream); // Igual o método acima porém de forma assíncrona