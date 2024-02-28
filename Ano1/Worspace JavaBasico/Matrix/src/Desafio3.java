import java.util.Arrays;
import java.util.Scanner;

public class Desafio3 {

	public static void main(String[] args) {
		Scanner sc = new Scanner(System.in);
		
		int [][] m1 = new int[3][2];
		
		
		
		for(int i = 0; i < 3; i++) {
			for(int j = 0; j < 2; j++) {
				m1[i][j] = sc.nextInt();
			}
		}
		
		int linhas = m1.length;
		int colunas = m1[0].length;
		
		int[][] m2 = new int[colunas][linhas];
		
		for(int i = 0; i < linhas; i++) {
			for(int j = 0; j < colunas; j++) {
				m2[j][i] = m1[i][j];
			}
		}
		
		for(int i = 0; i < colunas; i++) {
			for(int j = 0; j < linhas; j++) {
				System.out.print(m2[i][j] + " ");
			}
			System.out.println();
		}
		
		
		
		
		
		
    }

}
