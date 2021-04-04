programa {
	
	inclua biblioteca Tipos
	funcao inteiro valida_numero(cadeia A){
		inteiro B = 0
		enquanto (A != "1" e A != "2" e A != "3"){
			escreva("VALOR ERRADOR!")
			escreva("Digite um número: ")
			leia(A)
		}
		B = (Tipos.cadeia_para_inteiro(A, 10))
		retorne B
	}

	funcao inicio() {
        inteiro placarA, placarB, jogadaA_int, jogadaB_int
        cadeia nome1, nome2, jogadaA, jogadaB
        caracter resposta
        
       escreva("Jogador nº 1, digite seu nome: ")
       leia(nome1)
       limpa()
       escreva("Jogador nº 2, digite seu nome: ")
       leia(nome2)
	  limpa()

	// valor inicial de cada jogador
	placarA = 0
     placarB = 0
     
       faca {
       	escreva("Jogador ", nome1, " escolha sua jogada: \n")
        	escreva("[1] PEDRA\n")
        	escreva("[2] TESOURA\n")
        	escreva("[3] PAPEL\n")
        	leia(jogadaA)
        	jogadaA_int = valida_numero(jogadaA)
        	limpa()
        	
        	escreva("Jogador ", nome2, " escolha sua jogada: \n")
        	escreva("[1] PEDRA\n")
        	escreva("[2] TESOURA\n")
        	escreva("[3] PAPEL\n")
        	leia(jogadaB)
       	jogadaB_int = valida_numero(jogadaB)
       	limpa()
        
        //pedra
        se (jogadaA_int == 1 e jogadaB_int == 1){
        		escreva("EMPATE!\n")
        }
        senao se (jogadaA_int == 1 e jogadaB_int == 2){
        		placarA = placarA++
        }
        senao se (jogadaA_int == 1 e jogadaB_int == 3){
        	placarB = placarB++
        }
        //tesoura
        senao se (jogadaA_int == 2 e jogadaB_int == 2){
        		escreva("EMPATE!\n")
        }
        senao se (jogadaA_int == 2 e jogadaB_int == 1){
        		placarB = placarB++
        }
        senao se (jogadaA_int == 2 e jogadaB_int == 3){
        	placarA = placarA++
        }
        //papel
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
	  limpa()
       
       } enquanto (resposta == 'y')
        	
	   
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
 * @POSICAO-CURSOR = 198; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */