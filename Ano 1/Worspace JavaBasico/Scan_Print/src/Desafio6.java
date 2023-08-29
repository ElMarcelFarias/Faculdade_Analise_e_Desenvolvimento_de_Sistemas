import java.util.Scanner;
public class Desafio6 {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		
		Scanner sc = new Scanner(System.in);
		
		System.out.println("Informe um número real");
		float numero = sc.nextFloat();
		
		numero = Math.round(numero);
		System.out.println("Número arredondado: "+ numero);
		
	}

}
