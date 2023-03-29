// Bibliotecas com métodos de manipular aplicações do office
// Adicionar pasta C:\Program Files (x86)\Borland\Delphi7\Ocx\Servers no library path

// Fazer função autofilter do ExcelXP funcionar sem parâmetros, na segunda aparição da declaração (linha 17090):
//function AutoFilter(Field: OleVariant; Criteria1: OleVariant; Operator: XlAutoFilterOperator;
//                    Criteria2: OleVariant; VisibleDropDown: OleVariant): OleVariant; dispid 793;
function AutoFilter(): OleVariant; dispid 793;