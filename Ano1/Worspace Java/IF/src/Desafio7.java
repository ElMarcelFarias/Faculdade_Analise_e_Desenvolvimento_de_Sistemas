import java.util.Scanner;

public class Desafio7 {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		Scanner sc = new Scanner(System.in);
		
		Double valorSalarioMes; 
		
		System.out.println("Informe o valor da sua HORAS SEMANAIS Ex.:(20) ");
		Double valorHora = sc.nextDouble();
		
		System.out.println("Informe a quantidade de HORAS Ex.:(45) ");
		int quantidadeHoras = sc.nextInt();
		
		if(quantidadeHoras > 40 ) {
			Double valorHorasExtras; 
			quantidadeHoras = quantidadeHoras - 40;
			valorHorasExtras = ((valorHora * 0.50) + valorHora) * quantidadeHoras; 
			
			
			valorSalarioMes = (valorHora * 40) + valorHorasExtras;
			System.out.println("Valor do salário em horas semanais com horas extras cálculadas: "+ valorSalarioMes);
		} else {
			valorSalarioMes = (valorHora * 40);
			System.out.println("Valor do salário em horas semanais: "+ valorSalarioMes);
		}
	}

}
