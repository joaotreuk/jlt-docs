// <script src="jquery.min.js"></script>
// É necessário abrir por http para o ajax funcionar

$.ajax({
    type: "POST",
    //traditional: true,
    //async: false,
    //cache: false,
    url: "/Arquivo/NomeFuncao",
    contentType: "application/json; charset=utf-8",
    data: JSON.stringify({ Usuario: Usuario, Senha: Senha }),
    dataType: "json",
    beforeSend: () => {
        // Função chamada antes de iniciar a request, pode ser usada para mostrar o icone de loading
    },
    success: retorno => {
        // Função chamada quando a request da certo
        console.log(retorno)
    },
    complete: () => {
        // Função chamada quando a request termina, pode ser usada para esconder o icone de loading
        // Chamado após o "success"
    },
    error: (jqXHR, textStatus, errorThrown) => {
        // Função chamada caso ocorra erro, loga o status e o erro que aconteceu
        console.log(textStatus, errorThrown)
        console.log("HTTP Status: " + jqXHR.status)

        // Alerta o erro gerado, usando sweetalert
        Swal.fire({
            html: jqXHR.responseText,
            type: "error",
            confirmButtonText: 'OK'
        })
    }
})

// Ajax passando um FormData, util para passar arquivos como imagens
$.ajax({
    type: "POST",
    url: "/Arquivo/NomeFuncao",
    data: Formulario, // Passa o FormData como dados do ajax
    contentType: false,
    processData: false
})