import java.util.Arrays;
import java.util.Scanner;

public class Desafio4 {

	public static void main(String[] args) {
		Scanner sc = new Scanner(System.in);
		
		int [][] m1 = new int[4][4];
		
		
		
		for(int i = 0; i < 4; i++) {
			for(int j = 0; j < 4; j++) {
				System.out.println("Inserir números na L="+(i+1) + " e na C="+(j+1)+"");
				m1[i][j] = sc.nextInt();
			}
		}
		
		
		System.out.println("Você deseja ver o resto da divisão da diagonal principal? (1) ou o produto total da diagonal secundária (2)? ");
		int aux = sc.nextInt();
		
		if(aux == 1) {
			for(int i = 0; i < 4; i++) {
				for(int b = 0; b < 4; b++) {
					if(i == b) {
						System.out.println("Informe o divisor! ");
						int n2 = sc.nextInt(); 
						int resto =  m1[i][b] % n2;
						
						System.out.println(m1[i][b] + " % "+ n2+" = " + resto);
					}
				}
			}
		} else {
			for(int i = 0; i < 4; i++) {
				for(int b = 0; b < 4; b++) {
					if((b == 3) && (i == 0) || (b == 2) && (i == 1) || (b == 1) && (i == 2) || (b == 0) && (i == 3)) {
						System.out.println("Informe o multiplicador! ");
						int n2 = sc.nextInt(); 
						int produto =  m1[i][b] * n2;
						
						System.out.println(m1[i][b] + " * "+ n2+" = " + produto);
					}
				}
			}
		}
		
		
		
		
		
		
		
    }

}
