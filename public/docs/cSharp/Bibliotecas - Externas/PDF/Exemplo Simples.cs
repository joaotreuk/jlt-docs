public static byte[] ExportarPDF()
{
  MemoryStream memoryStream = new MemoryStream();
  Document documento = new Document();
  PdfWriter writer = PdfWriter.GetInstance(documento, memoryStream);

  documento.Open();

  Paragraph paragrafo = new Paragraph();
  paragrafo.Add("Texto");
  documento.Add(paragrafo);

  documento.Close();

  byte[] bytes = memoryStream.ToArray();
  memoryStream.Close();

  return bytes;
}