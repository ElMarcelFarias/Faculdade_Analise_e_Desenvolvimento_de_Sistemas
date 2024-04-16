COLDIGO = new Object(); // Cria um objeto COLDIGO, que será usado como identificador do projeto

$(document).ready(function() {
    $("header").load("http://localhost:8080/ColdigoGeladeira/pages/admin/general/header.html");
    $("footer").load("http://localhost:8080/ColdigoGeladeira/pages/admin/general/footer.html");
    
    //função paara carregamento de páginas de contéudo, que
    //recebe como parâmetro o nome da pasta com a página a ser carregada
    COLDIGO.carregaPagina = function(pagename) {
		$("section").empty();
		$("section").load(pagename+"/", function(response, status, info){
			if(status == "error"){
				var msg  = "Houve um erro ao encontrar a página: "+ info.status + " - " + info.statusText;
				$("section").html(msg);
			}
		})
	}
})

COLDIGO.exibirAviso = function (aviso) {
	var modal = {
		title: "Mensagem",
		height: 250,
		width: 400,
		modal: true,
		buttons: {
			"OK": function() {
				$(this).dialog("close");
			}
		}
	};
	$("#modalAviso").html(aviso);
	$("#modalAviso").dialog(modal);
};





