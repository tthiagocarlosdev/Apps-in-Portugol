programa
{
	inclua biblioteca Tipos
	funcao inteiro valida_numero(cadeia A){
		inteiro B = 0
		enquanto (A != "1" e A != "2" e A != "3"){
			escreva("Digite um número: ")
			leia(A)
		}
		B = (Tipos.cadeia_para_inteiro(A, 10))
		retorne B
	}
	funcao inicio()
	{
		cadeia num
		inteiro valor
		escreva("Digite um número: ")
		leia(num)
		valor = valida_numero(num)
		escreva("VALOR: "+valor)
		
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 95; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = {A, 4, 37, 1}-{B, 5, 10, 1}-{num, 15, 9, 3}-{valor, 16, 10, 5};
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */