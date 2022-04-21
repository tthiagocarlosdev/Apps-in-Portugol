programa
{
	inclua biblioteca Util --> u
	funcao load(){
		cadeia carregar = ".."
		inteiro percentual = 20
		
		para(inteiro i = 1; i <= 5; i++){
				
				escreva("Carregando "+carregar+" "+percentual+"%")
				carregar += ".."
				percentual += 20
				u.aguarde(1000)
				limpa()
		}
	}

	funcao welcome(){
	  escreva("Seja bem-vindo ao Sistema!\n")
	}

	funcao theAnd(){
	  escreva("Sistema Encerrado!")
	}
	
	funcao inicio()
	{

	welcome()
	load()
	theAnd()
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 323; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */