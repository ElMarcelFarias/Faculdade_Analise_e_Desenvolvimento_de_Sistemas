import java.util.Scanner;

public class Desafio7 {

	public static void main(String[] args) {

		Scanner sc = new Scanner(System.in);

		System.out.println("CALCULADORA BÁSICA JAVA");
		System.out.println("Informe seu primeiro número: ");
		int n1 = sc.nextInt();
		
		sc.nextLine();  
		System.out.println("Informe a operação: \n(+) \n(-) \n(x) \n(/) \n Ex.: +");
		String op = sc.nextLine();  
		
		System.out.println("Informe seu segundo número: ");
		int n2 = sc.nextInt(); 
		
		if((n2 == 0) && (op == "/")) {
			System.out.println("Número INCORRETO!\n O segundo número não pode ser menor ou igual a 0"); 
		} else {
			switch(op) {
			  case "+":
				  System.out.println(n1 + " + " + n2 + " = " + (n1+n2));
			    break;
			  case "-":
				  System.out.println(n1 + " + " + n2 + " = " + (n1-n2));
			    break;
			  case "x":
				  System.out.println(n1 + " + " + n2 + " = " + (n1*n2));
				    break;
			  case "/":
				  System.out.println(n1 + " + " + n2 + " = " + (n1/n2));
				    break;
			  default:
				  System.out.println("OPERAÇÃO INCORRETA!");
			}
		}
	}

}
