import java.util.Scanner;
import java.util.Random;

public class Desafio4 {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		Scanner sc = new Scanner(System.in);
		
		Random random = new Random();
		int numeroSorteado = random.nextInt(10);
		
		for(int i = 0; i < 5; i++) {
			System.out.println("Informe seu "+(i+1)+"° palpite! Número de 0-10 \n");
			int palpite = sc.nextInt();
			
			boolean result = sorteio(palpite, numeroSorteado);
			if(result) {break;}
			
		}
		
	}
	
	public static boolean sorteio( int palpite, int numeroSorteado) {
		
		if(numeroSorteado == palpite) {
			System.out.println("“PARABÉNS! Você ganhou o brinde!");
			return true;
		}
		return false;
		
	} 

}
