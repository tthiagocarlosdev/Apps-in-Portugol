programa {
	inclua biblioteca Texto
	  //declaracao de funcoes
	  funcao cabecalho(cadeia texto){
	  	inteiro contador, tamanho_texto, espaco
	  	const inteiro TL = 30

		tamanho_texto = Texto.numero_caracteres(texto)

		espaco = (TL - tamanho_texto) / 2
		//escreva(espaco)
		
		para(contador = 1; contador <= TL; contador++){
			escreva("-")
		}

		
		escreva("\n")
		para(contador = 1; contador < TL; contador++){
			se(contador < espaco){
				escreva(" ")
			}senao se(contador == espaco){
				escreva(texto, "\n")
			}
		}

		//escreva("\n", texto, "\n")
		
		para(contador = 1; contador <= TL; contador++){
			escreva("-")
		}
	  }
	
	  funcao inicio() {
	    
	
	    //declaracao de variaveis
	    cadeia nome
	
	    escreva("Digite seu nome: ")
	    leia(nome)
	    
	    limpa()
	    cabecalho(nome)
	
	    
	  }
}

/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 598; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = {texto, 4, 27, 5}-{contador, 5, 12, 8}-{tamanho_texto, 5, 22, 13}-{espaco, 5, 37, 6};
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */