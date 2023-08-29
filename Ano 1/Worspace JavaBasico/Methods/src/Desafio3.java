import java.util.Scanner;

public class Desafio3 {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		Scanner sc = new Scanner(System.in);
		
		System.out.println("Informe a medida em METROS (M): ");
		float medidaMetros = sc.nextFloat();
		
		System.out.println("Informe a unidade de medida: \n (c) - centímetros \n (p) - polegadas \n (pe) pés  \n (Q) quilômetros ");
		String unidadeMedida = sc.nextLine();
		
		float valorConvertido =  conversorMedida(medidaMetros, unidadeMedida);
		System.out.println("Valor convertido --> "+ valorConvertido);
		

	}
	
	
	public static float conversorMedida(float medida, String unidadeMedida) {
		
		switch (unidadeMedida) {
			
		case "c": 
			medida = medida * 100;
		break;
		
		case "p": 
			medida = (float) (medida * 39.37);
		break;
		
		case "pe": 
			medida = (float) (medida * 3.281);
		break;
			
		case "q": 
			medida = medida / 1000;
		break;
		
		default: 
			System.out.println("Unidade de medida incorreta! ");
			return 0;
		
		}
		
		return medida;
    }

}
