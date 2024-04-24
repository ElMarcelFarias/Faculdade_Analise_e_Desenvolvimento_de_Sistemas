package br.com.coldigogeladeiras.jdbcinterface;

import java.util.List;
import com.google.gson.JsonObject;

import br.com.coldigogeladeiras.modelo.Produto;

public interface ProdutoDAO {

	public boolean inserir(Produto produto);
	public List<JsonObject> buscarPorNome(String nome);
}
