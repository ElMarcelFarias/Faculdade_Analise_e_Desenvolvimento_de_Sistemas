import java.util.Arrays;
import java.util.Scanner;

public class Desafio3 {

	public static void main(String[] args) {
		Scanner sc = new Scanner(System.in);
		
		int [] notasAlunos = new int[30];
		int alunosAprovados = 0;
		int somaNotas = 0;
		int cont = 0;
		
		for(int i = 0; i < 30; i++) {
			System.out.println("Informe a nota do "+(i+1)+"° número: ");
			notasAlunos[i] = sc.nextInt();
			somaNotas += notasAlunos[i];
			
			if(notasAlunos[i] > 7) {
				alunosAprovados++;
			}
			cont++;
			
		}
		System.out.println("Média de todos alunos: " + (somaNotas/cont));
		System.out.println("Quantidade de alunos aprovados: " + alunosAprovados);
	
		
		
    }

}
