package dowhile_while;

import java.util.Scanner;

public class Desafio8 {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		Scanner sc = new Scanner(System.in);
		System.out.println("SISTEMA PARA CINEMA (FEEDBACK) ");
		int cont = 0;
		
		int[] contGenero = new int[3];

		
		int auxLoop = 0;
		String nomesDez = "";
		
		int totalIdade = 0;
		int totalNotas = 0;
		do {
			sc.nextLine();
			
			System.out.println("Informe seu nome..:");
			String nome = sc.nextLine();
			
			System.out.println("Informe seu genêro..: (M) - Masculino (F) - Feminino");
			String genero = sc.nextLine();
			
			System.out.println("Informe sua idade..:");
			int idade = sc.nextInt();
			
			System.out.println("Digite sua nota de 0-10..:");
			int nota = sc.nextInt();
			
			
			totalIdade = totalIdade + idade;
			totalNotas = totalNotas + nota;
			
			if(nota == 10) {
				nomesDez += nome  +"\n";
			}
			
			if(genero == "M") {
				if(nota < 5) {
					contGenero[0]++;
				} else {
					contGenero[1]++;
				}
			} else {
				if(nota < 5) {
					contGenero[2]++;
				} else {
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
