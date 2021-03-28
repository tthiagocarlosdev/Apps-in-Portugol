programa
{
	inclua biblioteca Texto --> t
	funcao inicio()
	{
		cadeia frase1, frase2, p2 = ""
		inteiro q_c
		caracter palindromo[255]
		
		
		escreva("Digite uma frase: ")
		leia(frase1)
		
		frase2 = t.substituir(frase1, " ", "")
		
		q_c = t.numero_caracteres(frase2)
		
		para(inteiro c = q_c - 1; c >= 0; c--){
			 palindromo[c] = t.obter_caracter(frase2, c)
			 p2 = p2 + palindromo[c]
		}
		
		se(frase2 == p2){
			escreva("Palindromo!\n")
			escreva(frase2, " = ", p2)
		}
		senao{
			escreva("Não Palíndromo!\n")
			escreva(frase2, " != ", p2)
		}
		
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 566; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = {p2, 6, 25, 2}-{q_c, 7, 10, 3}-{palindromo, 8, 11, 10}-{c, 18, 15, 1};
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */