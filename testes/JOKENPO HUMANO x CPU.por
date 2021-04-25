programa
{
	inclua biblioteca Tipos
	inclua biblioteca Texto
	inclua biblioteca Util
	funcao cabecalho(){
		escreva("  ______    ______    _   _   ______   _    _    _______    ______\n")
		escreva(" |____  |  / ____ \\  | | / / |  ____| | |  /  | |  ___  |  /  __  \\ \n")
		escreva("      | | | |    | | | |/ /  | |____  | | /   | | |___| | |  /  \\  |\n")
		escreva(" _    | | | |    | | |   /   |  ____| | |/ /| | |  _____| | |    | |\n")
		escreva("| |___| | | |____| | | |\\ \\  | |____  |   / | | | |       |  \\__/  |\n")
		escreva("|_______|  \\______/  |_| \\_\\ |______| |_ /  |_| |_|        \\______/\n")
		escreva("\n")
	}
	//\\//\\funçao valida numero
	funcao inteiro valida_numero(cadeia A){
		inteiro B = 0
		enquanto (A != "1" e A != "2" e A != "3"){
			escreva("Digite um número: ")
			leia(A)
		}
		B = (Tipos.cadeia_para_inteiro(A, 10))
		retorne B
	}
	//\\//\\inicio programa
	
	
	funcao inicio(){
	inteiro tipo
	escreva("Escolha o tipo de jogo: \n")
	escreva("[1] HUMANO x CPU\n")
	escreva("[2] HUMANO x HUMANO\n")
	leia(tipo)
	limpa()
	escolha(tipo){
		caso 1:
			cadeia nome, jogadaH, resposta
			inteiro placarH, placarM, jogada_intH, jogada_intM
			cabecalho()   
	     	escreva("Jogador humano, digite seu nome: ")
	     	leia(nome)
	     	nome = Texto.caixa_alta(nome)
	     	limpa()
	     	cabecalho()
	     	placarH = 0
	     	placarM = 0
		
			faca {
		  		escreva(nome, " escolha sua jogada: \n")
		   		escreva("[1] PEDRA\n")
		   		escreva("[2] TESOURA\n")
		   		escreva("[3] PAPEL\n")
		   		leia(jogadaH)
		   		jogada_intH = valida_numero(jogadaH)
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
     		// resultado final
			cabecalho()
     		escreva("RESULTADO FINAL!\n")
			escreva(nome+" "+placarH+" x "+placarM+" CPU\n")	
				se (placarH > placarM){
					escreva("Parabéns "+nome+" você venceu!")
				}
					senao se (placarH < placarM){
						escreva("CPU venceu!")
					}
						senao {
							escreva("Partida empatada!")
						}
		pare
		caso 2:

		pare
	}
			
		
	} //fim funcao inicio
} /*fim programa*/
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 1220; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */