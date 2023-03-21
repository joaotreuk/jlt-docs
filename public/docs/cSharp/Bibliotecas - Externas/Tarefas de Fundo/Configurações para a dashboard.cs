// Configurações para a dashboard
using Hangfire.Dashboard;

/*-------------------- DECLARAÇÃO / ATRIBUIÇÃO --------------------*/

DashboardOptions opcoesDashboard = new DashboardOptions();

/*-------------------- PROPRIEDADES --------------------*/

// Lista de métodos construtores de uma classe que valida a autorização de acesso a dashboard
opcoesDashboard.Authorization = new[] { new MeuFiltroDeAutorizacao() };

// Título da dashboard
opcoesDashboard.DashboardTitle = "Meu título";