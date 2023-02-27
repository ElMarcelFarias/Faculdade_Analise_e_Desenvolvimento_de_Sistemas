programa
{
	//Produzido por Otávio Henrique Vicente
	
	//Criaremos um programa que simula uma atualização de dados cadastrais de um 
	//funcionário em uma empresa. Solicitaremos: nome completo, telefone, e-mail, 
	//logradouro, número da casa, se a pessoa é doadora de sangue e seu último 
	//salário. Ainda não faremos nenhuma validação. Apenas faremos o uso dos tipos 
	//de dados mais adequados para cada situação (cadeia de caracteres ou texto, 
	//número inteiro, número real).
	
	funcao inicio()
	{
		cadeia nome, telefone, email, logradouro, doadorSangue;
		inteiro numCasa;
		real ultimoSalario;

		escreva("Nome: ");
		leia(nome);

		escreva("Telefone: ");
		leia(telefone);

		escreva("E-mail: ");
		leia(email);

		escreva("Logradouro: ");
		leia(logradouro);

		escreva("Nº da casa: ");
		leia(numCasa);

		escreva("Doador de Sangue (S/N): ");
		leia(doadorSangue)		

		escreva("Valor Último Salario: ");
		leia(ultimoSalario);

		limpa(); //função que limpa o console

		escreva("Nome: " + nome);
		escreva("\n Telefone: " + telefone);
		escreva("E-mail: " + email);
		escreva("Logradouro: " + logradouro);
		escreva("Nº da casa: " + numCasa);
		escreva("Doador de Sangue (S/N): " + doadorSangue);	
		escreva("Valor Último Salario: " + ultimoSalario);	
		
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 482; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */