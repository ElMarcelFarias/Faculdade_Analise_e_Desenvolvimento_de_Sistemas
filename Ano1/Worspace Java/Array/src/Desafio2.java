import java.util.Scanner;

public class Desafio2 {

	public static void main(String[] args) {
		Scanner sc = new Scanner(System.in);
		
		float [] notas = new float[3];
		float [] peso = new float[3];
		float somaNotas = 0;
		float totalNotas = 0;
		float totalPesos = 0;
		
		
		for(int i = 0; i < 5; i++) {
			System.out.println((i+1)+"° aluno: ");
			
			for(int j = 0; j < 3; j++) {
				System.out.println("Informe a "+(j+1)+"° nota: ");
				notas[j] = sc.nextFloat();
				
				System.out.println("Informe o peso da "+(j+1)+"° nota: ");
				peso[j] = sc.nextFloat();
				
				totalPesos = totalPesos + peso[j];
				somaNotas = notas[j] * peso[j];
				totalNotas += somaNotas;
				
			}
			
			System.out.println("Média ponderada do "+(i+1)+"° Aluno: "+ totalNotas/totalPesos);
			
		}
		
		
    }
	
	

}
