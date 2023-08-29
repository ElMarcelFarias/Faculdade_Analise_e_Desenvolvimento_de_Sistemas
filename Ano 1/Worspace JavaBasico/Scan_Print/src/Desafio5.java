import java.util.Scanner;
public class Desafio5 {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		
		Scanner sc = new Scanner(System.in);
		System.out.println("TABUADA!");
		System.out.println("Informe o número para Tabuada");
		int numero = sc.nextInt();
		
		for(int i = 0; i < 10; i++) {
			System.out.println(numero + " x " + (i+1) + " = "+ numero*(i+1));
		}

	}

}
