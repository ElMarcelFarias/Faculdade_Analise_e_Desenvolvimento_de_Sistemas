import java.util.Scanner;

public class Desafio5 {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		Scanner sc = new Scanner(System.in);
		Float imc;
		
		
		System.out.println("SOFTWARE CALCULO DE IMC");
		System.out.println("Informe seu peso Ex.: (58,00)");
		Float peso = sc.nextFloat();
		System.out.println("Sua altura em metros Ex.:(1,70)");
		Float altura = sc.nextFloat();
		
		imc = peso / (altura*altura);
		
		if(imc < 18.5) {
			System.out.println("SEU IMC É Abaixo do peso -> "+ imc);
		} else if(imc < 24.9) {
			System.out.println("SEU IMC É Peso normal -> "+ imc);
		} else if(imc < 29.9) {
			System.out.println("SEU IMC É Sobrepeso -> "+ imc);
		} else {
			System.out.println("SEU IMC É Obeso -> "+ imc);
		}
		
	}

}
