using System.Text.Json;

// Um item de um objeto JSON
JsonElement meuJson;

// Obter o valor para seu devido tipo
int numero = meuJson.GetInt32();
decimal numero = meuJson.GetDecimal();