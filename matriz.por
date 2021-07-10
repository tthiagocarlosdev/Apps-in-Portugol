programa
{
	inclua biblioteca Util
	inclua biblioteca Tipos --> t
	funcao escolhaMatriz(){
		escreva("Escolha:\n")
		escreva("[1] Matriz completa\n")
		escreva("[2] Diagonal Esquerda-Direita\n")
		escreva("[3] Triângulo Superior Direito\n")
		escreva("[4] Triângulo Inferior Esquerdo\n")
		escreva("[5] Diagonal Direita-Esquerda\n")
		escreva("[6] Triângulo Inferior Direito\n")
		escreva("[7] Triângulo Superior Esquerdo\n")
		escreva("[8] Gerar outra Matriz\n")
		escreva("[9] Encerrar Programa\n")
	}

	//funcao para validar valores
	funcao inteiro valida_numero(cadeia Num){
		
		logico teste
		inteiro NumA
		
		//validação de número
		teste = t.cadeia_e_inteiro(Num, 10)
		enquanto (teste == falso){
			limpa()
			escreva("Digite um número: ")
			leia(Num)	
			teste = t.cadeia_e_inteiro(Num, 10)
		}
		//validação de valores
		NumA = t.cadeia_para_inteiro(Num, 10)
		enquanto (NumA < 2 ou NumA > 100){
			limpa()
			escreva("Digite um número: ")
			leia(Num)
			NumA = t.cadeia_para_inteiro(Num, 10)
		}
		retorne NumA
	}
	
	funcao inicio()
	{
		inteiro valorMatriz = 0, tipoMatriz = 0, outraMatriz = 0
		inteiro matriz[100][100]
		cadeia valorA, valorB
		
		
		faca{ // inicio faca 1
			escreva("Digite a ordem da matriz: ")
			leia(valorA)
			valorMatriz = valida_numero(valorA)
			limpa()
			escolhaMatriz()
			leia(tipoMatriz)
			limpa() 
		
			//inserção de valores na matriz
			para(inteiro linha = 0; linha < valorMatriz; linha++){
				para(inteiro coluna = 0; coluna < valorMatriz; coluna++){
					matriz[linha][coluna] = Util.sorteia(0, 100)
				}
			}
			//cadeia outraMatriz = "n"
			faca { // inicio faca 2
					escolha (tipoMatriz){
						caso 1: 
							escreva("Matriz completa! "+valorMatriz+"x"+valorMatriz+"\n")
							para(inteiro linha = 0; linha < valorMatriz; linha++){
								para(inteiro coluna = 0; coluna < valorMatriz; coluna++){
									escreva(matriz[linha][coluna]+"\t")
								}
								escreva("\n")
							}	
						pare
						caso 2:
							escreva("\nDiagonal Esquerda-Direita!\n")
							para(inteiro linha = 0; linha < valorMatriz; linha++){
								para(inteiro coluna = 0; coluna < valorMatriz; coluna++){
									se(linha == coluna){
										escreva(matriz[linha][coluna]+"\t")	
									} senao {
										escreva("\t")
									}				
								}
								escreva("\n")
							}	
						pare
						caso 3:
							escreva("\nTriângulo Superior Direito!\n")
							para(inteiro linha = 0; linha < valorMatriz; linha++){
								para(inteiro coluna = 0; coluna < valorMatriz; coluna++){
									se(linha < coluna){
										escreva(matriz[linha][coluna]+"\t")	
									} senao {
										escreva("\t")
									}				
								}
								escreva("\n")
							}	
						pare
						caso 4: 
							escreva("Triângulo Inferior Esquerdo!\n")
							para(inteiro linha = 0; linha < valorMatriz; linha++){
								para(inteiro coluna = 0; coluna < valorMatriz; coluna++){
									se(linha > coluna){
										escreva(matriz[linha][coluna]+"\t")	
									} senao {
										escreva("  ")
									}				
								}
								escreva("\n")
							}
						pare
						caso 5:
							escreva("\nDiagonal Direita-Esquerda!\n")
							para(inteiro linha = 0; linha < valorMatriz; linha++){
								para(inteiro coluna = 0; coluna < valorMatriz; coluna++){
									se(linha + coluna == valorMatriz -1){
										escreva(matriz[linha][coluna]+"\t")	
									} senao {
										escreva("\t")
									}				
								}
								escreva("\n")
							}
						pare
						caso 6:
							escreva("\nTriângulo Inferior Direito!\n")
							para(inteiro linha = 0; linha < valorMatriz; linha++){
								para(inteiro coluna = 0; coluna < valorMatriz; coluna++){
									se(linha + coluna >= valorMatriz){
										escreva(matriz[linha][coluna]+"\t")	
									} senao {
										escreva("\t")
									}				
								}
								escreva("\n")
							}
						pare
						caso 7:
						escreva("\nTriângulo Superior Esquerdo!\n")
						para(inteiro linha = 0; linha < valorMatriz; linha++){
							para(inteiro coluna = 0; coluna < valorMatriz; coluna++){
								se(linha + coluna < valorMatriz -1){
									escreva(matriz[linha][coluna]+"\t")	
								} senao {
									escreva("  ")
								}				
							}
							escreva("\n")
						}
						pare
					}//fim escolha
		
					
				escreva("\n")
				escolhaMatriz()
				leia(tipoMatriz)
				limpa() 
					
			}enquanto (tipoMatriz < 8)//fim faca 2
			outraMatriz = tipoMatriz
		/*escreva("[8] Gerar outra Matriz\n")
		escreva("[9] Encerrar Programa\n")*/
		
		}enquanto(outraMatriz < 9) //fim faca 1
		

		
		escreva("\nPrograma encerrado!\n")
		
		
	}//fim funcao programa
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 4562; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */