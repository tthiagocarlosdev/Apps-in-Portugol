programa
{
	inclua biblioteca Texto
	funcao inicio(){
	inteiro placarA, placarB, jogada1b, jogada2b
     cadeia nome1, nome2, jogada1a, jogada2a
     cadeia resposta
        
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
        	leia(jogada1a)
        	se (jogada1a != "1" e jogada1a != "2" e jogada1a != "3"){
        		escreva("jjogada errada!\n")
        	}
        	//jogada1b = valida_numero(jogada1a)
        	//limpa()
        	
        	escreva("Jogador ", nome2, " escolha sua jogada: \n")
        	escreva("[1] PEDRA\n")
        	escreva("[2] TESOURA\n")
        	escreva("[3] PAPEL\n")
        	leia(jogada2a)
       	//jogada2b = valida_numero(jogada2a)
       	//limpa()
		
		escreva("\nJogar mais uma vez? \n")
		escreva("[Y] para sim\n")
		escreva("[N] para não\n")
		leia(resposta)
		resposta = Texto.caixa_baixa(resposta)
		se (resposta != "y" e resposta != "n"){
			escreva("Jogada errada!")
		}
       	
     } enquanto (resposta == "y")

	
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 1229; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */