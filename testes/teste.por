programa
{	
	inclua biblioteca Texto
	funcao inicio()
	{
		cadeia resposta
		
		faca {
			escreva("\nJogar mais uma vez? \n")
			escreva("[Y] para sim\n")
			escreva("[N] para não\n")
			leia(resposta)
			resposta = Texto.caixa_baixa(resposta)
			enquanto (resposta != "y" e resposta != "n"){
				escreva("Jogada errada!\n")
				escreva("Jogar mais uma vez? \n")
				escreva("[Y] para sim\n")
				escreva("[N] para não\n")
				leia(resposta)				
			}	
		} enquanto (resposta == "y")
	escreva("Partida encerrada!")	
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 451; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */