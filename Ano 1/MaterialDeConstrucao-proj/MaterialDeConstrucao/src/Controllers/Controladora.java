package Controllers;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import Models.*;
import Views.EntradaSaida;



public class Controladora {
	
	Estoque estoque = new Estoque();
	InfoProduto infoProdutos = new InfoProduto();
	
	int opcoesSelecionada = 0;
	int total = 0;
	int novoTotal = 0;
	int totalAtual = 0;
	int index = 0;
	
	public void exibeMenu() {
		
		do {
		
			if(infoProdutos.getlistaDeProdutos().isEmpty()) {
				opcoesSelecionada = EntradaSaida.exibePrimeiroMenu();
			} else {
				opcoesSelecionada = EntradaSaida.exibeMenuSecundario();
			}
			
			switch(opcoesSelecionada) {
				case 0:
					Produto produto = new Produto();
					
					produto.setCodigo(EntradaSaida.recebeCodigo());
					produto.setDescricao(EntradaSaida.recebeDescricao());
					produto.setPreco(EntradaSaida.recebePreco());
					infoProdutos.setlistaDeProdutos(produto);
				break;
				
				case 1:
					if(infoProdutos.getlistaDeProdutos().isEmpty()) {
						System.exit(0);
					}
					
					index = EntradaSaida.indexSelecionado(infoProdutos.getlistaDeProdutos());
					if(index != infoProdutos.getlistaDeProdutos().size()) {
						EntradaSaida.mostraProdutosSistema(infoProdutos.getlistaDeProdutos(), index);
					}
					
				break;
				
				case 2:
					index = EntradaSaida.indexSelecionado(infoProdutos.getlistaDeProdutos());
					
					if(index != infoProdutos.getlistaDeProdutos().size()) {
						infoProdutos.getlistaDeProdutos().get(index).setTotal(EntradaSaida.colocarProdutosEstoque());
						estoque.setlistaDeProdutosEstoque(infoProdutos.getlistaDeProdutos().get(index));
						EntradaSaida.mensagemCadastroEstoque();
					}
					
				break;
				
				case 3:
					
					if(estoque.getlistaDeProdutosEstoque().isEmpty()) {
						EntradaSaida.mensagemSemEstoque();
					} else {
						index = EntradaSaida.indexSelecionado(estoque.getlistaDeProdutosEstoque());
						
						if(index != infoProdutos.getlistaDeProdutos().size()) {
							EntradaSaida.menuEstoque(estoque.getlistaDeProdutosEstoque(), index);
						}
					}
					
				break;
				
				case 4:
					if(estoque.getlistaDeProdutosEstoque().isEmpty()) {
						EntradaSaida.mensagemSemEstoque();
					} else {
						index = EntradaSaida.indexSelecionado(estoque.getlistaDeProdutosEstoque());
						
						if(index != infoProdutos.getlistaDeProdutos().size()) {
							total = EntradaSaida.selecionaQtdVendas(estoque.getlistaDeProdutosEstoque().get(index).getTotal());
							totalAtual = estoque.getlistaDeProdutosEstoque().get(index).getTotal();
							novoTotal = EntradaSaida.produtosVendidos(total, totalAtual);
							
							if(total > totalAtual) {
								EntradaSaida.errorMsgVenda(totalAtual);
							} else if (total == totalAtual) {
								Cupom cupom = new Cupom();
								cupom.setCodigo(estoque.getlistaDeProdutosEstoque().get(index).getCodigo());
								cupom.setData("Data da venda: "+LocalDateTime.now().format(DateTimeFormatter.ofPattern("dd/MM/yyyy HH:mm:ss")));
								cupom.setTotalVendido(total);
								cupom.setPrecoTotal(total * estoque.getlistaDeProdutosEstoque().get(index).getPreco());
								estoque.getlistaDeProdutosEstoque().get(index).setCupons(cupom);
								estoque.setlistaCuponsTotais(cupom);
								
								estoque.getlistaDeProdutosEstoque().remove(index);
								EntradaSaida.mensagemVenda(novoTotal);
							}else {
								Cupom cupom = new Cupom();
								cupom.setCodigo(estoque.getlistaDeProdutosEstoque().get(index).getCodigo());
								cupom.setData("Data da venda: "+LocalDateTime.now().format(DateTimeFormatter.ofPattern("dd/MM/yyyy HH:mm:ss")));
								cupom.setTotalVendido(total);
								cupom.setPrecoTotal(total * estoque.getlistaDeProdutosEstoque().get(index).getPreco());
								estoque.getlistaDeProdutosEstoque().get(index).setCupons(cupom);
								estoque.setlistaCuponsTotais(cupom);
								
								estoque.getlistaDeProdutosEstoque().get(index).setTotal(novoTotal);
								EntradaSaida.mensagemVenda(novoTotal);
							}
							
							
						}
					}
					
				break;
				
				case 5:
					EntradaSaida.mostraTodosCupons(estoque.getlistaCuponsTotais());
					
				break;
				
				case 6:
					if(estoque.getlistaDeProdutosEstoque().isEmpty()) {
						EntradaSaida.mensagemSemEstoque();
					} else {
						index = EntradaSaida.indexSelecionado(estoque.getlistaDeProdutosEstoque());
						
						if(index != infoProdutos.getlistaDeProdutos().size()) {
							EntradaSaida.mostraCuponsProdutos(estoque.getlistaDeProdutosEstoque().get(index).getCupons());
						}
					}
				break;
				
				case 7:
					EntradaSaida.mostraTodosCupons(estoque.getlistaCuponsTotais());
				break;
				
				case 8:
					EntradaSaida.mensagemEncerraPrograma();
					System.exit(0);
				break;
			}
			
			
		} while(true);
			
		
	}
	
	
}


