import java.util.Scanner;

public class Desafio6 {

	public static void main(String[] args) {
		Scanner sc = new Scanner(System.in);
		
		System.out.println("Informe um candidado: ");
		System.out.println("(1) Marcel \n(2) Gustavo \n(3) Daniel  \n(4) Uchôa  \n(5) Mauricio  \n");
		int candidato = sc.nextInt();
		
		switch(candidato) {
		  case 1:
			  System.out.println("SEU VOTO: Marcel (1)");
		    break;
		  case 2:
			  System.out.println("SEU VOTO: (2) Gustavo");
		    break;
		  case 3:
			  System.out.println("SEU VOTO: (3) Daniel");
			    break;
		  case 4:
			  System.out.println("SEU VOTO: (4) Uchôa");
			    break;
		  case 5:
			  System.out.println("SEU VOTO: (5) Mauricio");
			    break;
		  default:
			 System.out.println("NUMERO INCORRETO!");
		}
		
	}


}
