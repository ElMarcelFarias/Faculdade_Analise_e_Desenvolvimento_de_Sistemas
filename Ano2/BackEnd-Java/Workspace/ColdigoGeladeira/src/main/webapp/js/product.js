COLDIGO.produto = new Object();

$(document).ready(function() {
	COLDIGO.produto.carregarMarcas = function() {
		$.ajax({
			type: "GET",
			url: "/ColdigoGeladeira/rest/marca/buscar",
			success: function () {
				
			},
			error: function () {
				
			}
		}) 
	}
})