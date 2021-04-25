programa
{
	inclua biblioteca Util
	funcao inicio()
	{
		cadeia nome, jogadaH, resposta
		inteiro placarH, placarM, jogada_intH, jogada_intM, 
		//cabecalho()   
     	escreva("Jogador nº 1, digite seu nome: ")
     	leia(nome)
     	//nome = Texto.caixa_alta(nome)
     	limpa()
     	//cabecalho()
     	placarH = 0
     	placarM = 0
		
		faca {
		  	escreva(nome, " escolha sua jogada: \n")
		   	escreva("[1] PEDRA\n")
		   	escreva("[2] TESOURA\n")
		   	escreva("[3] PAPEL\n")
		   	leia(jogadaH)
		   	jogada_intH = valida_numero(jogadaA)
		   	limpa()
			jogada_intM = Util.sorteia(1,3)
		   	
		     
		        
				//pedra
				se (jogada_intH == 1 e jogada_intM == 1){
		        		escreva("EMPATE!\n")
		        	}
		        	senao se (jogada_intH == 1 e jogada_intM == 2){
		        		placarH = placarH++
		        	}
		        	senao se (jogada_intH == 1 e jogada_intM == 3){
		        		placarM = placarM++
		        	}
		        	//tesoura
		        	senao se (jogada_intH == 2 e jogada_intM == 2){
		        		escreva("EMPATE!\n")
		        	}
		        	senao se (jogada_intH == 2 e jogada_intM == 1){
		        		placarM = placarM++
		        	}
		        	senao se (jogada_intH == 2 e jogada_intM == 3){
		        		placarH = placarH++
		        	}
		        	//papel
		       	senao se (jogada_intH == 3 e jogada_intM == 3){
		        		escreva("EMPATE!\n")
		        	}
		        	senao se (jogada_intH == 3 e jogada_intM == 1){
		        		placarH = placarH++
		        	}
		        	senao se (jogada_intH == 3 e jogada_intM == 2){
		        		placarM = placarM++
		        	}
			  	escreva("\n PLACAR PARCIAL: \n")
		       	escreva(nome+" "+placarH+" x "+placarM+" CPU\n")	
			  	escreva("\nJogar mais uma vez? \n")
			  	escreva("[Y] para sim\n")
			  	escreva("[N] para não\n")
			  	leia(resposta)
			  	resposta = Texto.caixa_baixa(resposta)
				enquanto (resposta != "y" e resposta != "n"){
				escreva("\n PLACAR PARCIAL: \n")
				escreva(nome+" "+placarH+" x "+placarM+" CPU\n")	
				escreva("\nJogada errada!\n")
				escreva("Jogar mais uma vez? \n")
				escreva("[Y] para sim\n")
				escreva("[N] para não\n")
				leia(resposta)
				resposta = Texto.caixa_baixa(resposta)				
			}	
			  	limpa()
		       
		}enquanto (resposta == "y")
     	
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 2103; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */