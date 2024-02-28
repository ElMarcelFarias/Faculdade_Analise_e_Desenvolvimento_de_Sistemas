

import java.util.Scanner;

public class Desafio8 {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		Scanner sc = new Scanner(System.in);
		String classificacaoFilme;
		
		System.out.println("Informe o nome do filme Ex.:(Scooby-doo) ");
		String nomeFilme = sc.nextLine();
		
		System.out.println("Informe a classificação indicativa Ex.:(livre - adulto- adolescente) ");
		String classIndicativa = sc.nextLine();
		
		System.out.println("Informe a duração do filme em minutos Ex.:(128) ");
		int duracaoFilme = sc.nextInt();
		
		
		if((classIndicativa == "livre") && (duracaoFilme <= 60)) {
			classificacaoFilme = "Infantil";
		} else if ((classIndicativa == "adolescente") && (duracaoFilme <= 120)) {
			classificacaoFilme = "Adolescente 10, 12 ou 14 anos";
		} else if ((classIndicativa == "adulto") && (duracaoFilme >= 120)) {
			classificacaoFilme = "Adulto 16 a 18 anos";
		} else {
			classificacaoFilme = "Não recomendado!";
		}
		
	
		
		System.out.println("Nome: "+ nomeFilme +" \n"
						+ "Duração em minutos: " + duracaoFilme+"\n"
						+ "classificação indicativa: "+ classIndicativa);
		
		
		
	}

}
