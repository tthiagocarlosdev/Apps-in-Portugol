/* - Programa desenvolvido por Thiago Carlos
 * - Estudante de programação.
 * - GitHub: https://github.com/tthiagocarlosdev​
 * - Instagram: https://www.instagram.com/tthiagocarlos.dev/​
 * - Gmail: tthiagocarlos.dev@gmail.com
 * 
 * PALÍNDROMO
 * Ao digitar uma frase ou texto de no máximo 255 caracteres
 * o programa irá informar se a frase ou texto é um palíndromo.
 * 
  */
programa
{
	inclua biblioteca Texto --> t
	funcao cadeia palindromo(cadeia texto){
		cadeia texto_sem_espaco = t.substituir(texto, " ", "")
		texto_sem_espaco = t.caixa_baixa(texto_sem_espaco)
		inteiro q_c = t.numero_caracteres(texto_sem_espaco)
		caracter palindromo_inicial[255]
		cadeia palindromo_final = ""
		
		para(inteiro c = q_c - 1; c >= 0; c--){
			 palindromo_inicial[c] = t.obter_caracter(texto_sem_espaco, c)
			 palindromo_final = palindromo_final + palindromo_inicial[c]
		}

		cadeia resultado_final
		se(texto_sem_espaco == palindromo_final){
				resultado_final = "Palíndromo!\n"+texto_sem_espaco+" = "+palindromo_final			
		}
		senao{
			resultado_final = "Não Palíndromo!\n"+texto_sem_espaco+" != "+palindromo_final		
		}
		retorne resultado_final
	}
	
	funcao inicio(){
	cadeia frase
				
	escreva("Digite uma frase: ")
	leia(frase)
	escreva(palindromo(frase))
		
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 390; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */