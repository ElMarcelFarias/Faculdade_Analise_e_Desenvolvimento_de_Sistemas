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
					
					$("#selMarca").html("");
					var option = document.createElement("option");
					option.setAttribute("value", "");
					option.innerHTML = ("Escolha");
					$("#selMarca").append(option);
					
					for(var i = 0; i < marcas.length; i++) {
						
						var option = document.createElement("option");
						//alert(marcas[i].id);
						alert(marcas[i].nome);
						option.setAttribute("value", marcas[i].id);
						option.innerHTML = (marcas[i].nome);
						$("#selMarca").append(option);
						
					}
					
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