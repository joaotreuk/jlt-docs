//Create new Excel WorkBook document. 
//The default file format is XLSX, but we can override that for legacy support
WorkBook xlsWorkbook = WorkBook.Create(ExcelFileFormat.XLS);
xlsWorkbook.Metadata.Author = "Joao Treuk";
//Add a blank WorkSheet
WorkSheet xlsSheet = xlsWorkbook.CreateWorkSheet("new_sheet");
//Add data and styles to the new worksheet
xlsSheet["A1"].Value = "Hello World";
xlsSheet["A2"].Style.BottomBorder.SetColor("#ff6600");
xlsSheet["A2"].Style.BottomBorder.Type = IronXL.Styles.BorderType.Double;
//Save the excel file
_ = xlsWorkbook.SaveAs("C:/Users/DesenDell03/Desktop/example_workbook.xlsx");