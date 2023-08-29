import java.util.Scanner;

public class Desafio4 {

	public static void main(String[] args) {
		Scanner sc = new Scanner(System.in);
		
		System.out.println("Informe uma letra do alfabeto Ex..:(B)");
		String letra = sc.nextLine();
		
		switch(letra) {
		  case "a":
			  System.out.println("VOGAL");
		    break;
		  case "e":
			  System.out.println("VOGAL");
		    break;
		  case "i":
			  System.out.println("VOGAL");
			    break;
		  case "o":
			  System.out.println("VOGAL");
			    break;
		  case "u":
			  System.out.println("VOGAL");
			    break;
		  default:
			  if(letra.matches("[a-z]")) {
				  System.out.println("CONSOANTE");
			  } else {
				  System.out.println("CARACTER INCOMPATIVEL");
			  }
		}
		

	}

}
