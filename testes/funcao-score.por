
programa
{
	funcao cadeia score(inteiro score){
			se (score == 1){
				retorne "PEDRA"
			} senao se (score == 2){
				retorne "TESOURA"
			} senao{
				retorne "PAPEL"	
			}	
	}
	funcao inicio(){
	inteiro num
	cadeia nome
	escreva("digite seu nome: ")
	leia(nome)
	escreva("escolha número: ")
	leia(num)
	escreva(nome+" "+score(num)+" "+score(num))
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 202; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */