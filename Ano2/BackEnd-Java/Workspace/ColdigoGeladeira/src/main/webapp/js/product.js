COLDIGO.produto = new Object();

$(document).ready(function() {
	COLDIGO.produto.carregarMarcas = function() {
		alert("Tentando buscar marcas");
		$.ajax({
			type: "GET",
			url: COLDIGO.PATH + "marca/buscar",
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
	
	//Cadastra na BD o produto informado
	
	COLDIGO.produto.cadastrar = function() {
		
		var produto = new Object();
		produto.categoria = document.frmAddProduto.categoria.value;
		produto.marcaId = document.frmAddProduto.marcaId.value;
		produto.modelo = document.frmAddProduto.modelo.value;
		produto.capacidade = document.frmAddProduto.capacidade.value;
		produto.valor = document.frmAddProduto.valor.value;
		
		if((produto.categoria == "") || (produto.marcaId == "") || (produto.modelo == "") || (produto.capacidade == "") 
		|| (produto.valor == "")) {
			COLDIGO.exibirAviso("Preencha todos os campos!");
		} else {
			$.ajax({
			type: "POST",
			url: COLDIGO.PATH + "produto/inserir",
			data:JSON.stringify(produto),
			success: function (msg) {
				COLDIGO.exibirAviso(msg);
				$("#addProduto").trigger("reset");
				
			},
			error: function (error) {
				COLDIGO.exibirAviso("Erro ao cadastrar um novo produto: "+ error.status + " - "+ error.statusText);
			}
		}) 
		}
		
	}
	
	
	//Busca no BD e exibe na página os produtos que atendam à solicitação do usuário
	COLDIGO.produto.buscar = function() {
		
		var valorBusca = $("campoBuscaProduto").val();
		
		$.ajax({
			type: "GET",
			url: COLDIGO.PATH + "produto/buscar",
			data:"valorBusca="+valorBusca,
			success: function (dados) {
				
				dados = JSON.parse(dados);
				console.log(dados);
				
			},
			error: function (error) {
				COLDIGO.exibirAviso("Erro ao consultar os contatos: "+ error.status + " - "+ error.statusText);
			}
		}); 
		
		
	};
	
	//Executa a função de busca ao carregar a página
	COLDIGO.produto.buscar();
	
	
	
	
	
	
	
	
	
	
	
	
	
});