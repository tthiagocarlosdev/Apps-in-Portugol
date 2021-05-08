programa
{
	/*Função de validação de números. A escolha inicial deve ser entre  os valores de 1 a 3.
	Caso seja digitado outro valor, a função aponta um erro, e solicita que o usuário digite
	um novo valor.*/
	inclua biblioteca Tipos
	inclua biblioteca Texto
	inclua biblioteca Util
	funcao cabecalho(){
		escreva("     _  ___  _  _______ _   _ ____   ___  \n")
		escreva("    | |/ _ \\| |/ / ____| \\ | |  _ \\ / _ \\ \n")
		escreva(" _  | | | | | ' /|  _| |  \\| | |_) | | | |\n")
		escreva("| |_| | |_| | . \\| |___| |\\  |  __/| |_| |\n")
		escreva(" \\___/ \\___/|_|\\_\\_____|_| \\_|_|    \\___/ \n")
		escreva("\n")
		Util.aguarde(1500)
		limpa()
		escreva(" ____  _____ ____  ____      _    \n")
		escreva("|  _ \\| ____|  _ \\|  _ \\    / \\   \n")
		escreva("| |_) |  _| | | | | |_) |  / _ \\  \n")
		escreva("|  __/| |___| |_| |  _ <  / ___ \\ \n")
		escreva("|_|   |_____|____/|_| \\_\\/_/   \\_\\")
		escreva("\n")
		Util.aguarde(1500)
		limpa()
		escreva(" ____   _    ____  _____ _     \n")
		escreva("|  _ \\ / \\  |  _ \\| ____| |    \n")
		escreva("| |_) / _ \\ | |_) |  _| | |    \n")
		escreva("|  __/ ___ \\|  __/| |___| |___ \n")
		escreva("|_| /_/   \\_\\_|   |_____|_____|\n")
		escreva("\n")
		Util.aguarde(1500)
		limpa()
		escreva(" _____ _____ ____   ___  _   _ ____      _    \n")
		escreva("|_   _| ____/ ___| / _ \\| | | |  _ \\    / \\   \n")
		escreva("  | | |  _| \\___ \\| | | | | | | |_) |  / _ \\  \n")
		escreva("  | | | |___ ___) | |_| | |_| |  _ <  / ___ \\ \n")
		escreva("  |_| |_____|____/ \\___/ \\___/|_| \\_\\/_/   \\_\\")
		escreva("\n")
		Util.aguarde(1500)
		limpa()
		escreva("     _  ___  _  _______ _   _ ____   ___  \n")
		escreva("    | |/ _ \\| |/ / ____| \\ | |  _ \\ / _ \\ \n")
		escreva(" _  | | | | | ' /|  _| |  \\| | |_) | | | |\n")
		escreva("| |_| | |_| | . \\| |___| |\\  |  __/| |_| |\n")
		escreva(" \\___/ \\___/|_|\\_\\_____|_| \\_|_|    \\___/ \n")
		escreva("\n")
	}
	// RODAPE
	funcao rodape(){
		escreva("     _  ___  _  _______ _   _ ____   ___  \n")
		escreva("    | |/ _ \\| |/ / ____| \\ | |  _ \\ / _ \\ \n")
		escreva(" _  | | | | | ' /|  _| |  \\| | |_) | | | |\n")
		escreva("| |_| | |_| | . \\| |___| |\\  |  __/| |_| |\n")
		escreva(" \\___/ \\___/|_|\\_\\_____|_| \\_|_|    \\___/ \n")
		escreva("\n")
	}
	//\\//\\funçao valida numero
	funcao inteiro valida_numero(cadeia A){
		inteiro B = 0
		enquanto (A != "1" e A != "2" e A != "3"){
			limpa()
			escreva("ATENÇÃO: JOGADA ERRADA!\n")
			escreva("Digite um número entre 1 e 3: ")
			leia(A)
		}
		B = (Tipos.cadeia_para_inteiro(A, 10))
		retorne B
	}

	//FUNÇÃO LOADING - simula o carregamento do resultado do jogo
	funcao loading(){
		escreva("Loading..........30%")
		Util.aguarde(1500)
		limpa()
		escreva("Loading....................60%")
		Util.aguarde(1500)
		limpa()
		escreva("Loading..............................90%")
		Util.aguarde(1500)
		limpa()
	}

	// função score
	funcao cadeia score(inteiro score){
			se (score == 1){
				retorne "PEDRA"
			} senao se (score == 2){
				retorne "TESOURA"
			} senao{
				retorne "PAPEL"	
			}	
	}
	//\\//\\inicio programa
	funcao inicio(){
	cabecalho()
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
				rodape()   
		     	escreva("Jogador humano, digite seu nome: ")
		     	leia(nome)
		     	nome = Texto.caixa_alta(nome)
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
			   		jogada_intH = valida_numero(jogadaH)
			   		limpa()
					jogada_intM = Util.sorteia(1,3)
			   	
					//pedra
					se (jogada_intH == 1 e jogada_intM == 1){
			        		loading()
			        		escreva("EMPATE!\n")
			        	}
			        	senao se (jogada_intH == 1 e jogada_intM == 2){
			        		loading()
			        		placarH = placarH++
			        	}
			        	senao se (jogada_intH == 1 e jogada_intM == 3){
			        		loading()
			        		placarM = placarM++
			        	}
			        	//tesoura
			        	senao se (jogada_intH == 2 e jogada_intM == 2){
			        		loading()
			        		escreva("EMPATE!\n")
			        	}
			        	senao se (jogada_intH == 2 e jogada_intM == 1){
			        		loading()
			        		placarM = placarM++
			        	}
			        	senao se (jogada_intH == 2 e jogada_intM == 3){
			        		loading()
			        		placarH = placarH++
			        	}
			        	//papel
			       	senao se (jogada_intH == 3 e jogada_intM == 3){
			        		loading()
			        		escreva("EMPATE!\n")
			        	}
			        	senao se (jogada_intH == 3 e jogada_intM == 1){
			        		loading()
			        		placarH = placarH++
			        	}
			        	senao se (jogada_intH == 3 e jogada_intM == 2){
			        		loading()
			        		placarM = placarM++
			        	}
				  	escreva("PLACAR PARCIAL: \n")
				  	escreva(nome+": "+score(jogada_intH)+" x CPU: "+score(jogada_intM))
			       	escreva("\n"+nome+" "+placarH+" x "+placarM+" CPU\n")	
				  	escreva("Jogar mais uma vez? \n")
				  	escreva("[Y] para sim\n")
				  	escreva("[N] para não\n")
				  	leia(resposta)
				  	resposta = Texto.caixa_baixa(resposta)
					enquanto (resposta != "y" e resposta != "n"){
						escreva("PLACAR PARCIAL: \n")
						escreva(nome+" "+placarH+" x "+placarM+" CPU\n")	
						escreva("Jogada errada!\n")
						escreva("Jogar mais uma vez? \n")
						escreva("[Y] para sim\n")
						escreva("[N] para não\n")
						leia(resposta)
						resposta = Texto.caixa_baixa(resposta)				
					}	
				  	limpa()
			       
				}enquanto (resposta == "y")
	     		// resultado final
	     		escreva("RESULTADO FINAL!\n")
				escreva(nome+" "+placarH+" x "+placarM+" CPU\n")	
					se (placarH > placarM){
						escreva("Parabéns "+nome+" você venceu!\n")
					}
						senao se (placarH < placarM){
							escreva("CPU venceu!\n")
						}
							senao {
								escreva("Partida empatada!\n")
							}
				rodape()
			pare
			/*HUMAN x HUMAN*/
			caso 2:
				cadeia nomeA, nomeB, jogadaA, jogadaB, respostA
				inteiro placarA, placarB, jogadaA_int, jogadaB_int
				rodape()
				escreva("Jogador nº 1, digite seu nome: ")
				leia(nomeA)
				nomeA = Texto.caixa_alta(nomeA)
				limpa()
				rodape()
				escreva("Jogador nº 2, digite seu nome: ")
				leia(nomeB)
				nomeB = Texto.caixa_alta(nomeB)
				limpa()
				placarA = 0
				placarB = 0
				faca{
					escreva(nomeA+" escolha sua jogada: \n")
					escreva("[1] PEDRA\n")
					escreva("[2] TESOURA\n")
					escreva("[3] PAPEL\n")
					leia(jogadaA)
					jogadaA_int = valida_numero(jogadaA)
					limpa()
					escreva(nomeB+" escolha sua jogada: \n")
					escreva("[1] PEDRA\n")
					escreva("[2] TESOURA\n")
					escreva("[3] PAPEL\n")
					leia(jogadaB)
					jogadaB_int = valida_numero(jogadaB)
					limpa()
		
					/*pedra*/
					se (jogadaA_int == 1 e jogadaB_int == 1){
				     	loading()
				     	escreva("EMPATE!\n")
				     }
					senao se (jogadaA_int == 1 e jogadaB_int == 2){
				     	loading()
				     	placarA = placarA++
					}
				     senao se (jogadaA_int == 1 e jogadaB_int == 3){
				     	loading()
				     	placarB = placarB++
					}
				     /*tesoura*/
				     senao se (jogadaA_int == 2 e jogadaB_int == 2){
				     	loading()
				     	escreva("EMPATE!\n")
				     }
				     senao se (jogadaA_int == 2 e jogadaB_int == 1){
				     	loading()
				     	placarB = placarB++
				     }
				     senao se (jogadaA_int == 2 e jogadaB_int == 3){
				     	loading()
				     	placarA = placarA++
				     }
				     /*papel*/
				     senao se (jogadaA_int == 3 e jogadaB_int == 3){
				     	loading()
				     	escreva("EMPATE!\n")
				     }
				     senao se (jogadaA_int == 3 e jogadaB_int == 1){
				     	loading()
				     	placarA = placarA++
				     }
				     senao se (jogadaA_int == 3 e jogadaB_int == 2){
				     	loading()
				     	placarB = placarB++
				     }
					escreva("PLACAR PARCIAL: \n")
					escreva(nomeA+": "+score(jogadaA_int)+" x "+nomeB+": "+score(jogadaB_int))
					escreva("\n"+nomeA+" "+placarA+" x "+placarB+" "+nomeB)
					escreva("\nJogar mais uma vez? \n")
					escreva("[Y] para sim\n")
					escreva("[N] para não\n")
					leia(respostA)
					respostA = Texto.caixa_baixa(respostA)
					limpa()
					enquanto (respostA != "y" e respostA != "n"){
						escreva("PLACAR PARCIAL: \n")
						escreva(nomeA+" "+placarA+" x "+placarB+" "+nomeB)
						escreva("\nJogar mais uma vez? \n")
						escreva("[Y] para sim\n")
						escreva("[N] para não\n")
						leia(respostA)
						respostA = Texto.caixa_baixa(respostA)
						limpa()	
					}//fim enquanto
				}enquanto (respostA == "y") /*fim faça*/
				/*resultado final*/
				escreva("RESULTADO FINAL!\n")
				escreva(nomeA+" "+placarA+" x "+placarB+" "+nomeB+"\n")
				se (placarA > placarB){
					escreva("Parabéns "+nomeA+" você venceu!\n")
				}
					senao se (placarA < placarB){
						escreva("Parabéns "+nomeB+" você venceu!\n")
					}
						senao{
							escreva("Partida empatada!\n")
						}
				rodape()
			pare
		}/*fim escolha*/	
	} //fim funcao inicio
} /*fim programa*/
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 8294; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */