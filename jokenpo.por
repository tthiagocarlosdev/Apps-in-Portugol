programa {
	
	inclua biblioteca Tipos --> t
	funcao inteiro valida_numero(cadeia Num){
		//cadeia Num
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
		enquanto (NumA < 1 ou NumA > 3){
			limpa()
			escreva("Digite um número: ")
			leia(Num)
			NumA = t.cadeia_para_inteiro(Num, 10)
		}
		retorne NumA
	}

	
	funcao inicio() {
        inteiro jogador1, jogador2, jogada1b, jogada2b
        cadeia nome1, nome2, jogada1a, jogada2a
        caracter resposta
        
       escreva("Jogador nº 1, digite seu nome: ")
       leia(nome1)
       limpa()
       escreva("Jogador nº 2, digite seu nome: ")
       leia(nome2)
	  limpa()

	// valor inicial de cada jogador
	jogador1 = 0
     jogador2 = 0
     
       faca {
       	escreva("Jogador ", nome1, " escolha sua jogada: \n")
        	escreva("[1] PEDRA\n")
        	escreva("[2] TESOURA\n")
        	escreva("[3] PAPEL\n")
        	leia(jogada1a)
        	jogada1b = valida_numero(jogada1a)
        	limpa()
        	
        	escreva("Jogador ", nome2, " escolha sua jogada: \n")
        	escreva("[1] PEDRA\n")
        	escreva("[2] TESOURA\n")
        	escreva("[3] PAPEL\n")
        	leia(jogada2a)
       	jogada2b = valida_numero(jogada2a)
       	limpa()
        
        //pedra
        se (jogada1b == 1 e jogada2b == 1){
        		escreva("EMPATE!\n")
        }
        senao se (jogada1b == 1 e jogada2b == 2){
        		jogador1 = jogador1++
        }
        senao se (jogada1b == 1 e jogada2b == 3){
        	jogador2 = jogador2++
        }
        //tesoura
        senao se (jogada1b == 2 e jogada2b == 2){
        		escreva("EMPATE!\n")
        }
        senao se (jogada1b == 2 e jogada2b == 1){
        		jogador2 = jogador2++
        }
        senao se (jogada1b == 2 e jogada2b == 3){
        	jogador1 = jogador1++
        }
        //papel
        senao se (jogada1b == 3 e jogada2b == 3){
        		escreva("EMPATE!\n")
        }
        senao se (jogada1b == 3 e jogada2b == 1){
        		jogador1 = jogador1++
        }
        senao se (jogada1b == 3 e jogada2b == 2){
        	jogador2 = jogador2++
        }
       
	  escreva("Jogar mais uma vez? \n")
	  escreva("[Y] para sim\n")
	  escreva("[N] para não\n")
	  leia(resposta)
       
       } enquanto (resposta == 'y')
        	

        
        escreva(nome1," ", jogador1, " x ", jogador2, " ",  nome2)	
        
        
	}
}


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
 * @POSICAO-CURSOR = 65; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */