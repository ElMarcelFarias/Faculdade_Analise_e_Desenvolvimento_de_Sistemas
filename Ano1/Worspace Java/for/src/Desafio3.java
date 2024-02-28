import java.util.Scanner;

public class Desafio3 {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		Scanner sc = new Scanner(System.in);
		
		System.out.println("Informe um número entro 1 e 9. Para fazer a divisão de 20 números");
		var numero = sc.nextInt();
		
		for(int i = 0; i <= 20; i++) {
			if(i != 0) {
				System.out.println(i + " / " + numero + " = "+ i/numero + " \n");
			} else {
				System.out.println(i + " / " + numero + " = ");
				System.out.println("Divisão por zero negada! \n");
			}
		}
		
		
	}

}
