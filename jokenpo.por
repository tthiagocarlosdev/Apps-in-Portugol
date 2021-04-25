programa {
	
	/*Função de validação de números. A escolha inicial deve ser entre  os valores de 1 a 3.
	Caso seja digitado outro valor, a função aponta um erro, e solicita que o usuário digite
	um novo valor.*/
	inclua biblioteca Util
	inclua biblioteca Texto
	inclua biblioteca Tipos
	funcao inteiro valida_numero(cadeia A){
		inteiro B = 0
		enquanto (A != "1" e A != "2" e A != "3"){
			escreva("VALOR ERRADOR!\n")
			escreva("Digite outro número: ")
			leia(A)
		}
		B = (Tipos.cadeia_para_inteiro(A, 10))
		retorne B
	}

	funcao cabecalho(){
		escreva("  ______    ______    _   _   ______   _    _    _______    ______\n")
		escreva(" |____  |  / ____ \\  | | / / |  ____| | |  /  | |  ___  |  /  __  \\ \n")
		escreva("      | | | |    | | | |/ /  | |____  | | /   | | |___| | |  /  \\  |\n")
		escreva(" _    | | | |    | | |   /   |  ____| | |/ /| | |  _____| | |    | |\n")
		escreva("| |___| | | |____| | | |\\ \\  | |____  |   / | | | |       |  \\__/  |\n")
		escreva("|_______|  \\______/  |_| \\_\\ |______| |_ /  |_| |_|        \\______/\n")
		escreva("\n")
	}
	/*INÍCIO DO PROGRAMA*/
	funcao inicio() {
	inteiro tipo
	escreva("Escolha o tipo de jogo: \n")
	escreva("[1] HUMANO x HUMANO\n")
	escreva("[2] HUMANO x CPU\n")
     leia(tipo)

	escolha(tipo){
		caso 1:
			cadeia nome, jogadaH, resposta
			inteiro placarH, placarM, jogada_intH, jogada_intM
			cabecalho()   
	     	escreva("Jogador nº 1, digite seu nome: ")
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
		        
				/*pedra*/
				se (jogada_intH == 1 e jogada_intM == 1){
		        		escreva("EMPATE!\n")
		        	}
		        	senao se (jogada_intH == 1 e jogada_intM == 2){
		        		placarH = placarH++
		        	}
		        	senao se (jogada_intH == 1 e jogada_intM == 3){
		        		placarM = placarM++
		        	}
		        	/*tesoura*/
		        	senao se (jogada_intH == 2 e jogada_intM == 2){
		        		escreva("EMPATE!\n")
		        	}
		        	senao se (jogada_intH == 2 e jogada_intM == 1){
		        		placarM = placarM++
		        	}
		        	senao se (jogada_intH == 2 e jogada_intM == 3){
		        		placarH = placarH++
		        	}
		        	/*papel*/
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
		       
		}enquanto (resposta == "y") /*fim faça*/

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
		
		/*HUMANO x HUMANO*/
		caso 2:
			inteiro placarA, placarB, jogadaA_int, jogadaB_int
		     cadeia nome1, nome2, jogadaA, jogadaB
		     cadeia resposta
		
		     cabecalho()   
		     escreva("Jogador nº 1, digite seu nome: ")
		     leia(nome1)
		     nome1 = Texto.caixa_alta(nome1)
		     limpa()
		     cabecalho()
		     escreva("Jogador nº 2, digite seu nome: ")
		     leia(nome2)
		     nome2 = Texto.caixa_alta(nome2)
			limpa()

			/* valor inicial de cada jogador*/
			placarA = 0
		     placarB = 0
     
			faca {
			  	escreva(nome1, " escolha sua jogada: \n")
			   	escreva("[1] PEDRA\n")
			   	escreva("[2] TESOURA\n")
			   	escreva("[3] PAPEL\n")
			   	leia(jogadaA)
			   	jogadaA_int = valida_numero(jogadaA)
			   	limpa()
				   	
			   	escreva(nome2, " escolha sua jogada: \n")
			   	escreva("[1] PEDRA\n")
			     escreva("[2] TESOURA\n")
			     escreva("[3] PAPEL\n")
			     leia(jogadaB)
			     jogadaB_int = valida_numero(jogadaB)
			     limpa()
			        
					/*pedra*/
					se (jogadaA_int == 1 e jogadaB_int == 1){
			        		escreva("EMPATE!\n")
			        	}
			        	senao se (jogadaA_int == 1 e jogadaB_int == 2){
			        		placarA = placarA++
			        	}
			        	senao se (jogadaA_int == 1 e jogadaB_int == 3){
			        		placarB = placarB++
			        	}
			        	/*tesoura*/
			        	senao se (jogadaA_int == 2 e jogadaB_int == 2){
			        		escreva("EMPATE!\n")
			        	}
			        	senao se (jogadaA_int == 2 e jogadaB_int == 1){
			        		placarB = placarB++
			        	}
			        	senao se (jogadaA_int == 2 e jogadaB_int == 3){
			        		placarA = placarA++
			        	}
			        	/*papel*/
			       	senao se (jogadaA_int == 3 e jogadaB_int == 3){
			        		escreva("EMPATE!\n")
			        	}
			        	senao se (jogadaA_int == 3 e jogadaB_int == 1){
			        		placarA = placarA++
			        	}
			        	senao se (jogadaA_int == 3 e jogadaB_int == 2){
			        		placarB = placarB++
			        	}
				  	escreva("\n PLACAR PARCIAL: \n")
			       	escreva(nome1," ", placarA, " x ", placarB, " ",  nome2)	
				  	escreva("\nJogar mais uma vez? \n")
				  	escreva("[Y] para sim\n")
				  	escreva("[N] para não\n")
				  	leia(resposta)
				  	resposta = Texto.caixa_baixa(resposta)
					enquanto (resposta != "y" e resposta != "n"){
					escreva("\n PLACAR PARCIAL: \n")
					escreva(nome1," ", placarA, " x ", placarB, " ",  nome2)	
					escreva("\nJogada errada!\n")
					escreva("Jogar mais uma vez? \n")
					escreva("[Y] para sim\n")
					escreva("[N] para não\n")
					leia(resposta)
					resposta = Texto.caixa_baixa(resposta)				
				}	
				  	limpa()
			       
			}enquanto (resposta == "y") /* fim faça*/
		
			/*RESULTADO FINAL*/
			cabecalho()		   
			escreva("RESULTADO FINAL!\n")
			escreva(nome1+" "+placarA+" x "+placarB+" "+nome2+"\n")	
				se (placarA > placarB){
					escreva("Parabéns "+nome1+" você venceu!")
				}
				senao se (placarA < placarB){
					escreva("Parabéns "+nome2+" você venceu!")
				}
				senao {
					escreva("Partida empatada!")
				}
		pare
	} /* fim escolha */
	} /* fim função início*/
} /* fim programa*/


/*
 *** Adicionar contagem de partidas e empates!
 *** limpar a tela do console
 * 
pedra ganha de tesoura
tesoura ganha de papel
papel ganha de pedra

pedra = 1      1x1 = x | 1x2 = 1 | 1x3 = 3
tesoura = 2	2x2 = x | 2x1 = 1 | 2x3 = 2
papel = 3		3x3 = x | 3x1 = 3 | 3x2 = 2
*/
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 6866; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */