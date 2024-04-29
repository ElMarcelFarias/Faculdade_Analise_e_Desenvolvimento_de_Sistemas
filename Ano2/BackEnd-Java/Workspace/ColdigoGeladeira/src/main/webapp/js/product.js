COLDIGO.produto = new Object();

$(document).ready(function() {
	COLDIGO.produto.carregarMarcas = function(id) {
		
		if(id!=undefined) {
			select = "#selMarcaEdicao";
		} else {
			select = "#selMarca";
		}
		
		$.ajax({
			type: "GET",
			url: COLDIGO.PATH + "marca/buscar",
			success: function (marcas) {
				
				if(marcas!="") {
					$(select).html("");
					$("#selMarca").html("");
					var option = document.createElement("option");
					option.setAttribute("value", "");
					option.innerHTML = ("Escolha");
					$(select).append(option);
					
					for(var i = 0; i < marcas.length; i++) {
						
						var option = document.createElement("option");
						//alert(marcas[i].id);
						option.setAttribute("value", marcas[i].id);
						
						if((id!=undefined)&&(id==marcas[i].id)) {
							option.setAttribute("selected", "selected");
						}
						
						option.innerHTML = (marcas[i].nome);
						$(select).append(option);
						
					}
					
				} else {
					$(select).html("");
					
					var option = document.createElement("option");
					option.setAttribute("value", "");
					option.innerHTML = ("Cadastre uma marca primeiro!");
					$(select).append(option);
					$(select).addClass("aviso");
				}
				
				
				
			},
			error: function (error) {
				COLDIGO.exibirAviso("Error ao buscar as marcas: "+ error.status + " - "+ error.statusText);
				
				$(select).html("");
				var option = document.createElement("option");
				option.setAttribute("value", "");
				option.innerHTML = ("Erro ao carregar Marcas!");
				$(select).append(option);
				$(select).addClass("aviso");
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
		
		var valorBusca = $("#campoBuscaProduto").val();
		
		$.ajax({
			type: "GET",
			url: COLDIGO.PATH + "produto/buscar",
			data:"valorBusca="+valorBusca,
			success: function (dados) {
				
				dados = JSON.parse(dados);
				
				$("#listaProdutos").html(COLDIGO.produto.exibir(dados));
				
			},
			error: function (error) {
				COLDIGO.exibirAviso("Erro ao consultar os contatos: "+ error.status + " - "+ error.statusText);
			}
		}); 
		
		
	};
	
	COLDIGO.produto.exibir = function(listaDeProdutos) {
		var tabela = "<table>"+
		"<tr>"+
		"<th>Categoria</th>"+
		"<th>Marca</th>"+
		"<th>Modelo</th>"+
		"<th>Cap. (l)</th>"+
		"<th>Valor</th>"+
		"<th class='acoes''>Ações</th>"+
		"</tr>";
		
		if(listaDeProdutos != undefined && listaDeProdutos.length > 0){
			
			for(var i = 0; i<listaDeProdutos.length; i++){
				tabela += "<tr>" +
						"<td>"+listaDeProdutos[i].categoria+"</td>" + 
						"<td>"+listaDeProdutos[i].marcaNome+"</td>" +
						"<td>"+listaDeProdutos[i].modelo+"</td>" +  
						"<td>"+listaDeProdutos[i].capacidade+"</td>" +
						"<td>"+COLDIGO.formatarDinheiro(listaDeProdutos[i].valor)+"</td>" +  
						"<td>"+
							"<a onclick=\"COLDIGO.produto.exibirEdicao('"+listaDeProdutos[i].id+"')\"><img src='../../imgs/edit.png' alt='Editar'></a>"+
							"<a onclick=\"COLDIGO.produto.excluir('"+listaDeProdutos[i].id+"')\"><img src='../../imgs/delete.png' alt='Excluir'></a>"+
						"</td>"+
						"</tr>";
			}
			
			
		} else if(listaDeProdutos == "") {
			tabela += "<tr><td colspan='6'>Nenhum registro encontrado</td></tr>"; 
		}
		tabela += "</table>";
		return tabela;
	};
	
	
	COLDIGO.formatarDinheiro = function(valor) {
		return valor.toFixed(2).replace('.', ',').replace(/(\d)(?=(\d{3})+\,)/g, "$1.");
	}
	
	
	//Executa a função de busca ao carregar a página
	//COLDIGO.produto.buscar();
	
	COLDIGO.produto.excluir = function(id) {
		$.ajax({
			type: "DELETE",
			url: COLDIGO.PATH + "produto/excluir/"+id,
			success: function (msg) {
				
				COLDIGO.exibirAviso(msg);
				COLDIGO.produto.buscar();
				
			},
			error: function (error) {
				COLDIGO.exibirAviso("Erro ao excluir o produtos: "+ error.status + " - "+ error.statusText);
			}
		}); 
	};
	
	
	
	COLDIGO.produto.exibirEdicao = function(id) {
		$.ajax({
			type: "GET",
			url: COLDIGO.PATH + "produto/buscarPorId",
			data: "id="+id,
			success: function (produto) {
					
				document.frmEditaProduto.idProduto.value = produto.id;
				document.frmEditaProduto.modelo.value = produto.modelo;
				document.frmEditaProduto.capacidade.value = produto.capacidade;
				document.frmEditaProduto.valor.value = produto.valor;
				
				var selCategoria = document.getElementById('selCategoriaEdicao');
				for(var i=0; i < selCategoria.length; i++){
					if(selCategoria.options[i].value == produto.categoria) {
						selCategoria.options[i].setAttribute("selected", "selected");
					} else {
						selCategoria.options[i].removeAttribute("selected");
					}
				}
				
				console.log(JSON.stringify(produto));
				
				COLDIGO.produto.carregarMarcas(produto.marcaId)
				
				var modalEditarProduto = {
					title: "Editar produto",
					height: 400,
					width: 550,
					modal: true,
					buttons: {
						"Salvar": function() {
							COLDIGO.produto.editar();
						}, 
						"Cancelar": function() {
							$(this).dialog("close");
						}
					},
					close: function() {
						
					}
				};
				
				$("#modalEditaProduto").dialog(modalEditarProduto);
				
				
			},
			error: function (error) {
				COLDIGO.exibirAviso("Erro ao buscar produtos para edição: "+ error.status + " - "+ error.statusText);
			}
		}); 
	}
	
	COLDIGO.produto.editar = function() {
		
		var produto = new Object();
		produto.id = document.frmEditaProduto.idProduto.value;
		produto.categoria = document.frmEditaProduto.categoria.value;
		produto.marcaId = document.frmEditaProduto.marcaId.value;
		produto.modelo = document.frmEditaProduto.modelo.value;
		produto.capacidade = document.frmEditaProduto.capacidade.value;
		produto.valor = document.frmEditaProduto.valor.value;
		
		
		$.ajax({
			type: "PUT",
			url: COLDIGO.PATH + "produto/alterar",
			data:JSON.stringify(produto),
			success: function (msg) {
				COLDIGO.exibirAviso(msg);
				COLDIGO.produto.buscar();
				$("#modalEditaProduto").dialog("close");
				
			},
			error: function (error) {
				COLDIGO.exibirAviso("Erro ao editar produto: "+ error.status + " - "+ error.statusText);
			}
		}); 
		
		
	}
	
	
	
	
	
	
	
	
	
});