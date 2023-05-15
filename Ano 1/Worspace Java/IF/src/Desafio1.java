import java.util.Scanner;

public class Desafio1 {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		Scanner sc = new Scanner(System.in);
		
		System.out.println("Informe a sua nota! Ex.:(9,75) ");
		Float numero = sc.nextFloat();
		
		if(numero >= 7) {
			System.out.println("VOCÊ ESTÁ APROVADO!");
		} else if (numero >= 5) {
			System.out.println("VOCÊ ESTÁ EM RECUPERAÇÃO!");
		} else {
			System.out.println("VOCÊ ESTÁ REPROVADO!");
		}
	}

}
