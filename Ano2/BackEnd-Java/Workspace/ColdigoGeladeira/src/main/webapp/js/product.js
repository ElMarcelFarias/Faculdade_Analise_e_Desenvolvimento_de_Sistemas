COLDIGO.produto = new Object();

$(document).ready(function() {
	COLDIGO.produto.carregarMarcas = function() {
		alert("Tentando buscar marcas");
		$.ajax({
			type: "GET",
			url: "/ColdigoGeladeira/rest/marca/buscar",
			success: function (marcas) {
				alert(JSON.stringify(marcas));
				
				if(marcas!="") {
					
				} else {
					$("selMarca").html("");
					
					var option = document.createElement("option");
					option.setAttribute("value", "");
					option.innerHTML = ("Cadastre uma marca primeiro!");
					$("#selMarca").append(option);
					$("#selMarca").addClass("aviso");
				}
				
				
				
			},
			error: function (error) {
				COLDIGO.exibirAviso("Error ao buscar as marcas: "+ error.status + " - "+ error.statusText);
				
				$("#selMarca").html("");
				var option = document.createElement("option");
				option.setAttribute("value", "");
				option.innerHTML = ("Erro ao carregar Marcas!");
				$("#selMarca").append(option);
				$("#selMarca").addClass("aviso");
			}
		}) 
	}
	
	COLDIGO.produto.carregarMarcas();
	
});