package dowhile_while;

import java.util.Scanner;

public class Desafio8 {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		Scanner sc = new Scanner(System.in);
		System.out.println("SISTEMA PARA CINEMA (FEEDBACK) ");
		int cont = 0;
		
		int[] contGenero = new int[4];

		
		int auxLoop = 0;
		String nomesDez = "";
		
		int totalIdade = 0;
		int totalNotas = 0;
		do {
			sc.nextLine();
			
			System.out.println("Informe seu nome..:");
			String nome = sc.nextLine();
			
			System.out.println("Informe seu genêro..: (1) - Masculino (2) - Feminino");
			int genero = sc.nextInt();
			
			System.out.println("Informe sua idade..:");
			int idade = sc.nextInt();
			
			System.out.println("Digite sua nota de 0-10..:");
			int nota = sc.nextInt();
			
			
			totalIdade = totalIdade + idade;
			totalNotas = totalNotas + nota;
			
			if(nota == 10) {
				nomesDez += nome  +"\n";
			}
			
			if(genero == 1) {
				if(nota < 5) {
					System.out.println("contGenero[0]++;");
					contGenero[0]++;
				} else if(nota > 7) {
					System.out.println("contGenero[1]++;");
					contGenero[1]++;
				}
			} else {
				System.out.println("hey");
				if(nota < 5) {
					System.out.println("contGenero[2]++;");
					contGenero[2]++;
				} else if(nota > 7) {
					System.out.println("contGenero[3]++;");
					contGenero[3]++;
				}
			}
			
			
			
			System.out.println("Deseja cadastrar mais uma pessoa? \n");
			System.out.println("(1 - Finalizar) (2 - Permanecer) \n");
			auxLoop = sc.nextInt();
			cont++;
		}while(auxLoop != 1);
		
		System.out.println("Média de notas informadas...: "+ totalNotas/cont+" \n");
		System.out.println("Média de idade...: "+ totalIdade/cont+" \n");
		System.out.println("A quantidade de homens cujas opiniões sobre o filme foram inferiores a 5...: "+contGenero[0] + "\n");
		System.out.println("A quantidade de homens cujas opiniões sobre o filme foram superiores a 7...: "+contGenero[1] + "\n");
		System.out.println("---------------------------------------------------------------------------------------------------");
		System.out.println("A quantidade de mulheres cujas opiniões sobre o filme foram inferiores a 5...: "+contGenero[2] + "\n");
		System.out.println("A quantidade de mulheres cujas opiniões sobre o filme foram superiores a 7...: "+contGenero[3] + "\n");
	}

}
