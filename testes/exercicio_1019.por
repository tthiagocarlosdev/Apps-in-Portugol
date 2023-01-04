programa
{
	
	funcao inicio()
	{
		inteiro tempoEmSegundos
		inteiro horas, minutos, segundos, resto
		
		escreva("Exercício 1019\n")
        	escreva("Conversão de Tempo\n")
        	escreva("Segundos\n")
		escreva("Tempo em segundos: ")
		leia(tempoEmSegundos)

		horas = tempoEmSegundos / 3600
		resto = tempoEmSegundos % 3600
		minutos = resto / 60
		segundos = resto % 60

		escreva(horas + ":" + minutos + ":" + segundos)
		
		
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 377; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */