programa
{
	inclua biblioteca Texto

	funcao cabecalho(){
		escreva("=========================\n")
		escreva("        snake_case\n")
		escreva("=========================\n")
	}
	
	funcao inicio()
	{
		cadeia texto, minusculo, substituido

		cabecalho()

		//entrada de dados
		escreva("Insira o texto: ")
		leia(texto)

		//procesamento de dados
		minusculo = Texto.caixa_baixa(texto)
		substituido = Texto.substituir(minusculo, " ", "_")

		//saída de dados
		limpa()
		cabecalho()
		escreva(substituido,"\n")
		escreva("=========================\n")
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 556; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */