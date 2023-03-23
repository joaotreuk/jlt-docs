// Após o Firebase ser inicializado, obtém a API de banco de dados
const db = firebase.firestore()

// Uma Coleção pelo seu nome identificador
const colecao = db.collection("Usuarios")

// Um documento pelo seu identificador
const documento = colecao.doc("ID do documento")

// Filtrar uma coleção
let referencia = colecao.where("Concluido", "==", true)
referencia = referencia.where("Data", ">=", timeStamp.now()) // Comparação entre objetos timeStamp
referencia = referencia.where("Lista", "array-contains", "Item") // Verifica se uma lista contém um item

// Define por qual campo os documentos seram ordenados, precisa ser o mesmo campo em que se possui um filtro de comparação ">="" ou "<"
referencia = referencia.orderBy("Data", "desc")

// Define a partir de qual documento ira ser buscado por mais documentos, deve ser passado o valor do campo de ordenação
referencia = referencia.startAfter("1999-12-24")

// Define um limite de documentos a serem obtidos
referencia = referencia.limit(20)

// Obtém os dados de um documento ou coleção com uma função futura
documento.get().then(doc => {
    // Função futura chamado após os dados serem obtidos

    // Verifica se o documento existe ou não
    if (doc.exists) console.log("Document exist")

    let dados = doc.data()
    doc.id // Identificador de um documento
    console.log(dados.Nome)
 
}).catch(error => {
    // Função chamada caso aconteça um erro ao tentar obter os dados
})

// Obtém os dados de uma coleção ou documento com uma função assíncrona
const querySnapshot = await referencia.get()
// Percorre cada documento de um snapshot de uma coleção
querySnapshot.forEach(doc => {})
// Filtrar entre os documentos de um snapshot de uma coleção
let documentos = querySnapshot.docs.filter(doc => doc.id == "shfenfuenfuib")

// Cria um novo documento
colecao.add({
    Nome: "Joao",
    Idade: 20,
    Exemplo: true
}).then(docRef => {
    // Função chamado após o documento ser criado
}).catch(error => {
    // Função chamada caso ocorra um erro ao criar o documento
})

// Atualiza um documento existente
documento.update({ 
    Nome: "Joao" 
}).then(docRef => {
    // Função chamado após o documento ser atualizado
}).catch(error => {
    // Função chamada caso ocorra um erro ao atualizar o documento
})

// Deleta um documento
documento.delete().then(docRef => {
    // Função chamado após o documento ser deletado
}).catch(error => {
    // Função chamada caso ocorra um erro ao deletar o documento
})

// Cria ou atualiza um documento especificando seu identificador
documento.set({ Nome: "Joao" })

// Obtém uma API de data atual do Firebase
const timeStamp = firebase.firestore.Timestamp
let dataTimeStamp = timeStamp.now() //Cria um objeto TimeStamp do momento atual
dataTimeStamp = timeStamp.fromDate(dataJavascript) // Cria um objeto TimeStamp a partir de um objeto de data do JavaScript