import java.util.Scanner;

public class Desafio4 {

	public static void main(String[] args) {
		Scanner sc = new Scanner(System.in);
		
		System.out.println("Informe sua idade! Ex.:(22)");
		int idade = sc.nextInt();

		if(idade > 17) {
			System.out.println("Um jovem, com idade entre 18 e 30 anos;\r\n"
					+ " Sua idade--> "+ idade);
		} else if (idade > 29) {
			System.out.println("Um adulto, com idade entre 30 e 59 anos;\r\n"
					+ "--> "+ idade);
		} else if (idade > 58) {
			System.out.println("Um idoso, com idade a partir de 60 anos. Sua idade--> "+ idade);
		} else {
			System.out.println("Uma criança, com idade abaixo de 18 anos;\r\n"
					+ " Sua idade--> "+ idade);
		}
	}

}
