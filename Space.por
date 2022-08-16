programa
{
	inclua biblioteca Texto
	
	funcao inicio()
	{
		cadeia texto
		inteiro tamanho, espaco
		
		escreva("insira o texto: ")
		leia(texto)

		tamanho = Texto.numero_caracteres(texto)
		espaco = (25 - tamanho) / 2
		
		escreva("Tamanho: ",tamanho,
		"\nEspaçamento: ",espaco)
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 257; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */