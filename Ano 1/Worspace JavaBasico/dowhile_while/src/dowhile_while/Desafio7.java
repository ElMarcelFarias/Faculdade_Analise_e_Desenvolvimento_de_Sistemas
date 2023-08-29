
package dowhile_while;

import java.util.Scanner;

public class Desafio7 {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		Scanner sc = new Scanner(System.in);
		
		int auxLoop = 0;
		int cont = 0;
		float totalSalario = 0;
		float salarioAnteriorMaior = 0;
		int totalNumeroFilhos = 0;
		int totalIdade = 0;
		String nomesSalariosMenor = "";
		boolean temSalario = false;
		
		System.out.println("Araquachussets GESTÃO");
		
		do {
			sc.nextLine();
			System.out.println("Informe seu nome..:");
			String nome = sc.nextLine();
			
			System.out.println("Informe sua idade..:");
			int idade = sc.nextInt();
			
			System.out.println("Informe seu salário..:");
			float salario = sc.nextFloat();
			
			System.out.println("Informe numero de filhos..:");
			int numeroFilhos = sc.nextInt();
			
			
			
			
			totalSalario = totalSalario + salario;
			totalNumeroFilhos = totalNumeroFilhos + numeroFilhos;
			totalIdade = totalIdade + idade;
			
			if(salario > salarioAnteriorMaior) {
				salarioAnteriorMaior = salario;
			}
			
			if(salario < 1000.0) {
				nomesSalariosMenor += nome  +"\n";
				temSalario = true;
			}
			
			
			System.out.println("Deseja cadastrar mais uma pessoa? \n");
			System.out.println("(1 - Finalizar) (2 - Permanecer) \n");
			auxLoop = sc.nextInt();
			cont++;
			
		}while(auxLoop !=1);
		
		System.out.println("Média de salário da população...: "+ totalSalario/cont+" \n");
		System.out.println("Média de número de filhos...: "+ totalNumeroFilhos/cont+" \n");
		System.out.println("Maior salário...: "+salarioAnteriorMaior+"\n");
		System.out.println("Média de idade da população...: "+ totalIdade/cont+" \n");
		if(temSalario) { System.out.println("LISTA DE PESSOAS COM MENOS DE 1000.0 DE RENDA: \n"+ nomesSalariosMenor); }
		
	}

}
