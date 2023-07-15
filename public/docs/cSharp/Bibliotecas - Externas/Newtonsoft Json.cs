using Newtonsoft.Json;
using Newtonsoft.Json.Linq;

// Objeto JSON
JObject valores = new();

// Adicionar um propriedade ao objeto
valores["Nome"] = "João";

// Serializar o objeto JSON para uma string
string jsonString = JsonConvert.SerializeObject(valores);
string jsonString = JsonConvert.SerializeObject(values, config); // Passsar configurações de serialização

// Configurações de serialização
JsonSerializerSettings config = new();
config.NullValueHandling = NullValueHandling.Ignore;
config.DefaultValueHandling = DefaultValueHandling.Ignore;
config.Formatting = Formatting.None;