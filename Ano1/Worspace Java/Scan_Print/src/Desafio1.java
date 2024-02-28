import java.util.Scanner;
public class Desafio1 {
	
	public static void main(String[] args) {

		Scanner sc = new Scanner(System.in);
		
		System.out.println("Informe o seu nome");
		String nome = sc.nextLine();

		System.out.println("Informe a sua idade");
		int idade = sc.nextInt();
		
		
		System.out.println("SEUS DADOS\n"
				+ "-Saudações "+ nome + "\n"
				+ "-Idade: "+ idade);
		
	}

}
