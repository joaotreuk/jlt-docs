public byte[] ExportarExcel()
{
  ExcelPackage caderno = new ExcelPackage();
  ExcelWorksheet folha = caderno.Workbook.Worksheets.Add("Exemplo");

  ExcelRange celula = folha.Cells[1, 1];
  celula.Value = "Conteúdo";

  return caderno.GetAsByteArray();
}