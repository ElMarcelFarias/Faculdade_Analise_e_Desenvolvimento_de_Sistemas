import java.util.Scanner;

public class Desafio2 {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		Scanner sc = new Scanner(System.in);
		
		
		System.out.println("Cálculo de média ARITMÉTICA");
		System.out.println("Informe a quantidade de notas! ");
		int numeroNotas = sc.nextInt();
		Float numero[] = new Float[numeroNotas];
		Float mediaFinal = (float) 0;
		
		for(int i = 0; i < numeroNotas; i++) {
			System.out.println("Informe a sua "+(i+1)+"° nota: ");
			numero[i] = sc.nextFloat();
			
			mediaFinal = mediaFinal + numero[i];
		}
		mediaFinal = (mediaFinal / numeroNotas);
		System.out.println(mediaFinal);
		
		
		
	}

}
