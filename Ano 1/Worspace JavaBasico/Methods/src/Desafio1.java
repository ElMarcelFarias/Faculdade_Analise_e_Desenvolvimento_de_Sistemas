import java.util.Arrays;
import java.util.Scanner;

public class Desafio1 {

	public static void main(String[] args) {
		
		Scanner sc = new Scanner(System.in);
		
		System.out.println("Informe sua nota: ");
		float nota = sc.nextFloat();
		
		System.out.println(calculoNota(nota));
		
    }
	
	public static String calculoNota(float nota) {
		
		String resultado = " ";
		
		if(nota < 5) {
			resultado = "REPROVADO!";
		} else if (nota < 7) {
			resultado = "Recuperação!";
		} else {
			resultado = "APROVADO!";
		}
		
		return resultado;
		
		
    }

}
