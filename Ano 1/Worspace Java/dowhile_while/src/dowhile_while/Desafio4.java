package dowhile_while;

import java.util.Scanner;

public class Desafio4 {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		Scanner sc = new Scanner(System.in);
		
		int number;
		
		
		float salarioM = 0;
		int idadeM = 0;
		int contM = 0;
		
		float salarioF = 0;
		int idadeF = 0;
		int contF = 0;
		
		do {
			
			System.out.println("Informe seu gênero: masculino - (M) | feminino (f)");
			String gender = sc.nextLine().toUpperCase();
			
			switch(gender) {
				case "M":
					contM++;
					System.out.println("Informe o salário: ");
					salarioM = sc.nextFloat();
					
					System.out.println("Informe a idade: ");
					idadeM = sc.nextInt();
					
				break;
				
				case "F":
					contF++;
					System.out.println("Informe o salário: ");
					salarioM = sc.nextFloat();
					
					System.out.println("Informe a idade: ");
					idadeF = sc.nextInt();
					
				break;
			}
				
			
			
			
			
			if(contM > 0) {
				salarioM = salarioM/contM;
				idadeM = idadeM/contM;
			}
			
			if(contF > 0) {
				salarioF = salarioF/contF;
				idadeF = idadeF/contF;
			}
			
			
			System.out.println("Média: \nSalário masculino...: "+salarioM+" \nIdade masculino...: "+idadeM+" \nSalário feminino...: "+salarioF+" \nIdade feminino...: "+ idadeF);
			
			
			
			System.out.println("(1 - Finalizar) (2 - Permanecer)");
			number = sc.nextInt();
			
			//arrumar o 4
		} while(number != 1);
		
	}

}
