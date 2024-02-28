import java.util.Arrays;
import java.util.Scanner;

public class Desafio2 {

	public static void main(String[] args) {
		
		Scanner sc = new Scanner(System.in);
		
		System.out.println("Informe seu numero: ");
		String numero = sc.nextLine();
		
		System.out.println(mascaraCelular(numero));
		
    }
	
	public static String mascaraCelular(String nota) {
		String numero = "(" + nota.substring(0, 2) + ")" + nota.substring(2, 7) + "-" + nota.substring(7, 11);
		return numero;
    }

}
