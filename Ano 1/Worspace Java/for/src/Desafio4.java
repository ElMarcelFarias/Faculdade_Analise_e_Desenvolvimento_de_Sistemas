import java.util.Scanner;

public class Desafio4 {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		Scanner sc = new Scanner(System.in);
		
		System.out.println("Informe o primeiro número: ");
		int numero1 = sc.nextInt();
		
		System.out.println("Informe o segundo número: ");
		int numero2 = sc.nextInt();
		
		float soma = 0;
		int cont = 0;
		
		for(int i = numero1+1; i < numero2; i++) {
			System.out.println(i+"\n");
			cont++;
			soma = soma + i;
		}
		System.out.println("Média do intervalo dos números: "+ soma/cont);
	}

}
