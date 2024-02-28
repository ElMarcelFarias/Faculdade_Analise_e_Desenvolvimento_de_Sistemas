import java.util.Scanner;

public class Desafio2 {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		Scanner sc = new Scanner(System.in);
		
		System.out.println("Informe a sua palavra para percorrer dentro do for. ");
		String nome = sc.nextLine();
		
		for(int i = 0; i < nome.length(); i++) {
			System.out.println("letras: "+ nome.charAt(i) + " \n");
		}
		System.out.println("Quantidade de letras: "+ nome.length());
		
	}

}
