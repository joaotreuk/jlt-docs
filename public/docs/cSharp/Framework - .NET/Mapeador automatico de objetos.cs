// Pacote para instalação: AutoMapper.Extensions.Microsoft.DependencyInjection
using AutoMapper;

// Criando um perfil de mapeamento
public class MeuPerfil : Profile
{
    public MeuPerfil()
    {
        // Cria um mapeamento entre a classe modelo e a classe de visualização
        // A classe de visualização é uma classe normal contendo apenas os campos do modelo que se deseja enviar por um controlador
        CreateMap<AlunoModel, AlunoView>();
        CreateMap<AlunoModel, AlunoView>().ReverseMap(); // Além de criar o mapeamento acima também cria um mapeamento reverso da view para o modelo

        // Mapeando para pegar o campo certo em uma relação de muitos para muitos
        CreateMap<AlunoModel, AlunoView>().ForMember(alunoView => alunoView.Materias, opt => {
            opt.MapFrom(alunoModel => alunoModel.AlunosMaterias.Select(x => x.Materia).ToList());
        });
    }
}

#region Configurando o serviço
// Criando o configurador de mapeamento
MapperConfiguration mapperConfig = new MapperConfiguration(mc =>
{
    // Adicionando perfis de mapeamento para o configurardor
    mc.AddProfile(new AutoMapperProfiles());
});

// Criando o elemento mapeador
IMapper mapper = mapperConfig.CreateMapper();

// Adicionando o serviço de mapeamento para injeção de dependência em um controlador
services.AddSingleton(mapper);
#endregion

// Usando o mapeador
public IMapper Mapeador { get; }
AlunoView aluno = Mapeador.Map<AlunoView>(alunoModel);
Mapeador.Map(alunoView, alunoModel); // Atualiza os dados da classe modelo com base nos dados da classe de visualização