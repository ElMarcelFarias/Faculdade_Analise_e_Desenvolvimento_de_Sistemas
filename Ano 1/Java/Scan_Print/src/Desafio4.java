import java.util.Scanner;
public class Desafio4 {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		Scanner sc = new Scanner(System.in);
		
		System.out.println("Informe o seu nome");
		String nome = sc.nextLine();

		System.out.println("Informe a sua idade");
		int idade = sc.nextInt();
		
		System.out.println("Informe a sua altura");
		float altura = sc.nextFloat();
		
		System.out.println("SEUS DADOS \n"
							+ "Nome: "+ nome + "\n"
							+ "Idade: "+ idade + "\n"
							+ "Altura: "+ altura + "\n");
	}

}
