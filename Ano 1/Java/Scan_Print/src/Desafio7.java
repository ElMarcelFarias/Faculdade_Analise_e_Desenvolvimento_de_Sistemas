import java.util.Scanner;

public class Desafio7 {

	public static void main(String[] args) {
		// TODO Auto-generated method stub

		Scanner sc = new Scanner(System.in);
		System.out.println("CONVERTER TEMPERATURA");
		System.out.println("Informe a temperatura em fahrenheit ");
		Float numero = sc.nextFloat();
		
		numero = (numero - 32) * 5 / 9;
		System.out.println("-celsius "+numero);
		
	}

}
