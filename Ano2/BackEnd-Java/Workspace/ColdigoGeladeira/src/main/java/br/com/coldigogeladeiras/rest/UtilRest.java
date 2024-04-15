package br.com.coldigogeladeiras.rest;

import javax.ws.rs.core.Response;
import javax.ws.rs.core.Response.ResponseBuilder;

import com.google.gson.Gson;

public class UtilRest {	
	
	/*
	 * Abaixo o metodo responsável por enviar a resposta ao cliente sobre
	 * a transição realizada (inclusão, consulta, edição ou exclusão) casp
	 * ela seja realizada com sucesso.
	 * Repare que o método em questão aguarda que seja repassada um
	 * conteúdo que será referenciado por um objeto chamado result.
	 * */
	
	
	public Response buildResponse(Object result) {
		
		try {
			/*
			 * Retorna o objeto de resposta com status 200 (ok), tendo
			 * em seu corpo o objeto valorResposta (que consiste no
			 * objeto result convertido para JSON).
			 * 
			 */
		}
		
	}
	
}	
