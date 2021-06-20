programa
{
	inclua biblioteca Util
	funcao inicio(){
	inteiro ascii[93], t, minimo, simbolo = 0, numeros = 0, letra_minuscula = 0, letra_maiuscula = 0
	cadeia senha[93]
	logico quantidade_caracteres = falso
	
	escreva("tamanho da senha: ")
	leia(t)
	//validação quantidade dos tipos de caracteres
	minimo = t/4
	
	enquanto(quantidade_caracteres == falso){
		//sorteio do valores da escala ascii
	    para(inteiro d = 0; d < t; d++) {
			ascii[d] = Util.sorteia(33, 126)
	    }		
	    //validação para não repetir caracteres na senha
	    para (inteiro a = 0; a < t-1; a++){
		    para (inteiro b = a+1; b < t; b++){
			    enquanto (ascii[a] == ascii[b] ou ascii[a] == 39 ou ascii[b] == 39){
				    ascii[b] = Util.sorteia(33, 126)
					    a = 0
					    b = 1
				}		
		    }
	    }
		
		//validação quantidade dos tipos de caracteres
		para(inteiro c = 0; c < t; c++){
		
			se (ascii[c] >= 33 e ascii[c] <= 47 ou ascii[c] >= 58 e ascii[c] <= 64 ou ascii[c] >= 91 e ascii[c] <= 96 ou ascii[c] >= 122 e ascii[c] <= 126){
				simbolo = simbolo++
			}
			senao se(ascii[c] >= 48 e ascii[c] <=57){
				numeros = numeros++
			}
			senao se(ascii[c] >= 97 e ascii[c] <=122){
				letra_minuscula = letra_minuscula++
			}
			senao se (ascii[c] >= 65 e ascii[c] <=90){
				letra_maiuscula = letra_maiuscula++
			}
		}
		
		se (simbolo < minimo ou numeros < minimo ou letra_minuscula < minimo ou letra_maiuscula < minimo){
		    quantidade_caracteres = falso
		    simbolo = 0
		    numeros = 0
		    letra_minuscula = 0
		    letra_maiuscula = 0
		}senao {
		    quantidade_caracteres = verdadeiro
		}
	}
		
	
	
			
	
	escreva("Mínimo:\t"+minimo+"\n")
	escreva("Símbolo:\t"+simbolo+"\n")
	escreva("Número:\t"+numeros+"\n")
	escreva("Letras minúsculas:\t"+letra_minuscula+"\n")
	escreva("Letras maiúsculas:\t"+letra_maiuscula+"\n")

	
	para(inteiro c = 0; c < t; c++){
		escreva(ascii[c]+" - ")
	}
		
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 208; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = {ascii, 5, 9, 5}-{minimo, 5, 23, 6}-{simbolo, 5, 31, 7}-{numeros, 5, 44, 7}-{letra_minuscula, 5, 57, 15}-{letra_maiuscula, 5, 78, 15}-{senha, 6, 8, 5}-{a, 20, 19, 1}-{b, 21, 20, 1};
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */