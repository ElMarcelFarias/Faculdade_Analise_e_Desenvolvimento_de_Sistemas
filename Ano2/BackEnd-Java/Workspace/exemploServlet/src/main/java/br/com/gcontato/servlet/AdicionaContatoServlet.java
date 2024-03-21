package br.com.gcontato.servlet;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class AdicionaContatoServlet extends HttpServlet {
	
	private static final long serialVersionUID = 1l; //grava o estado da classe
	
	public AdicionaContatoServlet() {
		super();
	}
	
	
	protected void service(HttpServletRequest request, 
							HttpServletResponse response)
							throws ServletException, IOException {
		PrintWriter out = response.getWriter();
		String nome = request.getParameter("txtnome"); 
		String txtend = request.getParameter("txtend");
		String txtfone = request.getParameter("txtfone");
		out.println("<h1>Saida de dados:</h1><p>"+nome+"</p><p>"+txtend+"</p>"+"<p>"+txtfone+"</p>");
		
		
	}
	
	protected void doGet(HttpServletRequest request, 
						HttpServletResponse response)
						throws ServletException, IOException {
		
	}
	
	protected void doPost(HttpServletRequest request, 
							HttpServletResponse response)
						throws ServletException, IOException {

	}
	
}
