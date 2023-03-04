using System.Data;
using System.Data.SqlClient;

DataTable TabelaDados;
SqlDataAdapter Adaptador;

List<object[]> Lista = new List<object[]> { };

using (Adaptador = new SqlDataAdapter(comando))
{
    using (TabelaDados = new DataTable())
    {
        Adaptador.SelectCommand = comando;
        _ = Adaptador.Fill(TabelaDados);

        foreach (DataRow Linha in TabelaDados.Rows)
        {
            Lista.Add(Linha.ItemArray); // Adiciona as linha de retorno em uma lista

            foreach (DataColumn Coluna in TabelaDados.Columns)
            {
                //row[column.ColumnName];
            }
        }
    }
}

// Obtendo os dados usando um DataTable a partir de um SqlCommand ExecuteReader
DataTable tabela = new DataTable();
tabela.Load(comando.ExecuteReader());
foreach (DataRow linha in tabela.Rows) { string dado = linha[0].ToString(); }

// Adicionar uma coluna a um datatable
TabelaDados.Columns.Add("ID", typeof(int));

// Adiciona uma linha ao datatable, aceita []
TabelaDados.Rows.Add(1, "Nome");