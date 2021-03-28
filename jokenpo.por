programa {
	funcao inicio() {
        inteiro jogador1, jogador2, jogada1, jogada2
        cadeia nome1, nome2
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
        	leia(jogada1)	
        	limpa()
        	escreva("Jogador ", nome2, " escolha sua jogada: \n")
        	escreva("[1] PEDRA\n")
        	escreva("[2] TESOURA\n")
        	escreva("[3] PAPEL\n")
        	leia(jogada2)
       
        //pedra
        se (jogada1 == 1 e jogada2 == 1){
        		escreva("EMPATE!\n")
        }
        senao se (jogada1 == 1 e jogada2 == 2){
        		jogador1 = jogador1++
        }
        senao se (jogada1 == 1 e jogada2 == 3){
        	jogador2 = jogador2++
        }
        //tesoura
        senao se (jogada1 == 2 e jogada2 == 2){
        		escreva("EMPATE!\n")
        }
        senao se (jogada1 == 2 e jogada2 == 1){
        		jogador2 = jogador2++
        }
        senao se (jogada1 == 2 e jogada2 == 3){
        	jogador1 = jogador1++
        }
        //papel
        senao se (jogada1 == 3 e jogada2 == 3){
        		escreva("EMPATE!\n")
        }
        senao se (jogada1 == 3 e jogada2 == 1){
        		jogador1 = jogador1++
        }
        senao se (jogada1 == 3 e jogada2 == 2){
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
 * @POSICAO-CURSOR = 1999; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */