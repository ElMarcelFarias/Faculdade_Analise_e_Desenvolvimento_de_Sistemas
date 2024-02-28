import java.util.Scanner;
public class Desafio2 {

	public static void main(String[] args) {
		
		Scanner sc = new Scanner(System.in);
		
		System.out.println("CALCULADORA BÁSICA");
		
		System.out.println("O primeiro número: ");
		int n1 = sc.nextInt();
		
		System.out.println("O segundo número: ");
		int n2 = sc.nextInt();
		
		System.out.println("Resultados: \n"+n1+" + "+ n2+ " = " + (n1+n2) + "\n"+ n1 + " - "+ n2 + " = " + (n1-n2) + "\n"
				+ n1 + " * "+ n2 + " = "+ (n1*n2)+ "\n"+n1+" / "+n2+" = "+ (n1/n2));

	}

}
