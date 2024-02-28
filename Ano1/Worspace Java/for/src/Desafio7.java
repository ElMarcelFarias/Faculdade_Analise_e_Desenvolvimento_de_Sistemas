import java.util.Scanner;

public class Desafio7 {

	public static void main(String[] args) {
		Scanner sc = new Scanner(System.in);
		
		System.out.println("Boletim Semetral! ");
		
		String[] materias = new String[] {"Matemática", "Português", "Geografia", "História"};
		float [][] notas = new float[4][4];
		float[] somaNotas = new float[4];
		
		int[] ponderada  = new int[4];
		int somaPeso = 0;
		
		for(int i = 0; i < 4; i++) {
			System.out.println("Informe um valor para o peso "+(i+1)+"Ex.:(4)");
			ponderada[i] = sc.nextInt();
		}
		
		for(int i = 0; i < materias.length; i++) {
			System.out.println("Materia: "+ materias[i]);
			
			for(int j = 0; j < 4; j++) {
				System.out.println("Informe a "+(j+1)+"° nota..: ");
				notas[i][j] = sc.nextInt();
				somaNotas[i] = somaNotas[i] + (notas[i][j] * ponderada[i]);
				somaPeso = somaPeso + ponderada[i];
			}
			
		}
		
		System.out.println("Média de todas as matérias: \n\r");
		for(int i = 0; i < 4; i++) {
			System.out.println("Média "+materias[i]+"...: "+ (somaNotas[i]/somaPeso) + " \n\r");
		}
		
		
		
	}

}
