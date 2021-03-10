programa
{
	inclua biblioteca Texto
	funcao inicio()
	{	
		cadeia frase
		inteiro posicao, qnt = 0
		
		escreva("Digite uma frase: ")
		leia(frase)
		frase = Texto.caixa_baixa(frase)
		
		
		// VOGAL A
		posicao = -1
		faca{
			posicao = Texto.posicao_texto("a", frase, posicao + 1)
			
		se (posicao >= 0){
			qnt = qnt + 1
		}
			
		} enquanto (posicao >= 0)

		//VOGAL E
		posicao = -1
		faca{
			posicao = Texto.posicao_texto("e", frase, posicao + 1)
			
		se (posicao >= 0){
			qnt = qnt + 1
		}
			
		} enquanto (posicao >= 0)
		
		//VOGAL I
		posicao = -1
		faca{
			posicao = Texto.posicao_texto("i", frase, posicao + 1)
			
		se (posicao >= 0){
			qnt = qnt + 1
		}
			
		} enquanto (posicao >= 0)

		//VOGAL O
		posicao = -1
		faca{
			posicao = Texto.posicao_texto("o", frase, posicao + 1)
			
		se (posicao >= 0){
			qnt = qnt + 1
		}
			
		} enquanto (posicao >= 0)

		//VOGAL E
		posicao = -1
		faca{
			posicao = Texto.posicao_texto("u", frase, posicao + 1)
			
		se (posicao >= 0){
			qnt = qnt + 1
		}
			
		} enquanto (posicao >= 0)
		
		escreva("A frase '", frase, "' contém ", qnt, " vogais.")
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 191; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */