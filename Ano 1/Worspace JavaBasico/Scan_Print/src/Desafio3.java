import java.util.Scanner;
public class Desafio3 {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		Scanner sc = new Scanner(System.in);
		
		System.out.println("É PAR OU NÃO?");
		
		System.out.println("Informe um número inteiro para verificação! ");
		int n1 = sc.nextInt();
		
		if(n1%2==0) {
			System.out.println("Número é par! "+ n1);
		} else {
			System.out.println("Número é impar! "+ n1);
		}
	}

}
