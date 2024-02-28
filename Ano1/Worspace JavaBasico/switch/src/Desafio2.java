import java.util.Scanner;

public class Desafio2 {

	public static void main(String[] args) {
		Scanner sc = new Scanner(System.in);
		
		System.out.println("Informe uma forma geométrica! ");
		System.out.println("CIRCULO (C) \nQuadrado (Q)\nRetângulo (R)\nTRIÂNGULO(T): EM MAIUSCULO!! ");
		String formas = sc.nextLine();
		
		switch(formas) {
		  case "C":
			  System.out.println("Informe o raio do Circulo! ");
			  Float raioCirculo = sc.nextFloat();
			  System.out.println("A área do circulo é de: "+ 3.14 * (raioCirculo * raioCirculo));
			  
		    break;
		  case "Q":
			  System.out.println("Informe o valor de um lado do quadrado! ");
			  Float b = sc.nextFloat();
			  
			  System.out.println("A área do quadrado é de: "+ b * b);
			  
		    break;
		  case "R":
			  System.out.println("Informe a base do quadrado! ");
			  Float bRetangulo = sc.nextFloat();
			  
			  System.out.println("Informe a altura do quadrado! ");
			  Float hRetangulo = sc.nextFloat();
			  
			  System.out.println("A área do retângulo é de: "+ bRetangulo * hRetangulo);
			    break;
		  case "T":
			  System.out.println("Informe a base do quadrado! ");
			  Float bTriangulo = sc.nextFloat();
			  
			  System.out.println("Informe a altura do quadrado! ");
			  Float hTriangulo = sc.nextFloat();
			  
			  System.out.println("A área do retângulo é de: "+ (bTriangulo * hTriangulo)/2);
			    break;
		  default:
			  System.out.println("OPÇÃO ERRADA!");
		}

	}

}
