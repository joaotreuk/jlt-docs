// Lib para documentação de API

// Configurar no .NET
app.UseSwagger();
app.UseSwaggerUI();

// Configurar serviço no .NET
builder.Services.AddEndpointsApiExplorer();
builder.Services.AddSwaggerGen(); // Configurações padrão
builder.Services.AddSwaggerGen(c => {
  // Habilitar descrições e sumários para os endpoints
  c.EnableAnnotations();

  // Adicionar um ou mais documentos para a página do Swagger
  c.SwaggerDoc("v1", new OpenApiInfo { Title = "Super API", Version = "v1.0.1" });
});

// Adicionar atributos de descrição e sumário p/ os métodos da API
using Swashbuckle.AspNetCore.Annotations;
[SwaggerOperation(Summary = "Obter a entidade pelo Id")]
[SwaggerOperation(Description = "...", Summary = "...")]