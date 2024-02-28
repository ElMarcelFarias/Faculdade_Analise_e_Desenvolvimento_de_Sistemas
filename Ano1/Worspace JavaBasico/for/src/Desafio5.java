import java.util.Scanner;

public class Desafio5 {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		Scanner sc = new Scanner(System.in);
		
		System.out.println("Informe uma frase para verificar seus caracteres..:  ");
		String frase = sc.nextLine();
		
		int contVogal = 0;
		int contSpace = 0;
		int contCons = 0;
		
		for(int i = 0; i < frase.length(); i++) {
			switch(frase.charAt(i)) {
				case 'a', 'A', 'e', 'E', 'o', 'O', 'i', 'I','u', 'U':
					contVogal++;
				break;
				case ' ':
					contSpace++;
				break;
				default:
					contCons++;
			}
			
		}
		
		System.out.println("Quantidade de vogais: "+ contVogal + " \n\r"
				+ "Quantidade de consoantes: "+ contCons +" \n\r"
				+ "Quantidade de espaços: "+ contSpace);

	}

}
