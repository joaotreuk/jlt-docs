const Sql = require('mssql')

const Pool = new Sql.ConnectionPool({ user: 'Joao', password: '1224', server: 'localhost', database: 'Criative' })
const Request = new Sql.Request(Pool)

Pool.connect(function(Erro) {
    if (Erro) throw Erro;
    
    //Request.input('input_parameter', sql.Int, value)
    //Request.output('output_parameter', sql.Int)
    Request.query("SELECT 1 AS Numero, 'Joao' AS Nome", (Erro, result) => {
        if (Erro) throw Erro;
 
        console.log(result.recordset[0].Numero) //Retorna valor da coluna
        console.log(result.recordset[0].Nome)
        console.log(result.recordsets.length) // count of recordsets returned by the procedure
        console.log(result.recordsets[0].length) // count of rows contained in first recordset
        console.log(result.recordset) // first recordset from result.recordsets
        console.log(result.returnValue) // procedure return value
        console.log(result.output) // key/value collection of output values
        console.log(result.rowsAffected) // array of numbers, each number represents the number of rows affected by executed statemens
    })
 })
