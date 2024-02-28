import java.util.Scanner;

public class Desafio5 {

	public static void main(String[] args) {
		Scanner sc = new Scanner(System.in);
		
		
		System.out.println("centímetros (C) \npolegadas (P)\npés (PE)\nquilômetros(Q): EM MAIUSCULO!! ");
		String formas = sc.nextLine();
		
		
		System.out.println("Informe a sua medida em metros.:  ");
		Float metros = sc.nextFloat();
		
		
		switch(formas) {
		  case "C":
			  System.out.println("Conversão de metros para centimetros: "+ metros*100);
			  
		    break;
		  case "P":
			  System.out.println("Conversão de metros para polegadas: "+ (metros*100) / 2.54);
			  
		    break;
		  case "PE":
			  System.out.println("Conversão de metros para pés: "+ (metros*3.28));
			    break;
		  case "Q":
			  System.out.println("Informe a altura do quilometros! " + (metros/1000));
			    break;
		  default:
			  System.out.println("OPÇÃO ERRADA!");
		}

	}

}
