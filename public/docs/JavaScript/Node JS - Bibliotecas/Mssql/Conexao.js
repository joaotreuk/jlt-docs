const Sql = require('mssql')

const Pool = new Sql.ConnectionPool({
   user: 'Joao',
   password: '1224',
   server: 'localhost',
   database: 'Criative'
})

Pool.connect(function(Erro) {
   if (Erro) throw Erro;
   console.log("Connected!");
})