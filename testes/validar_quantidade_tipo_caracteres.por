/*
33 até 47 - símbolos
48 ate 57 - números
58 até 64 - símbolos
65 até 90 - letras maiúsculas
91 até 96 - símbolos
97 até 122 - letras minúsculas
122 até 126 - símbolos
 */

programa
{
	inclua biblioteca Util
	funcao inicio(){
	inteiro ascii[93], t, minimo, simbolo = 0, numeros = 0, letra_minuscula = 0, letra_maiuscula = 0
	cadeia senha[93]
	
	escreva("tamanho da senha: ")
	leia(t)

	


	//validação quantidade dos tipos de caracteres
	minimo = t/4
	faca{
		
		//sorteio do valores da escala ascii
		para(inteiro d = 0; d < t; d++) {
			ascii[d] = Util.sorteia(33, 126)
	}		
		//validação para não repetir caracteres na senha
		para (inteiro a = 0; a < t-1; a++){
			para (inteiro b = a+1; b < t; b++){
				enquanto (ascii[a] == ascii[b] ou ascii[a] == 39 ou ascii[a] == 92 ou ascii[b] == 39 ou ascii[b] == 92){
					ascii[b] = Util.sorteia(33, 126)
						a = 0
						b = 1
					}		
			}
		}
		
		//simbolo = 0 numeros = 0 letra_minuscula = 0 letra_maiuscula = 0
		para(inteiro c = 0; c < t; c++){
			se (ascii[c] >= 33 e ascii[c] <=47 ou ascii[c] >= 58 e ascii[c] <=64 ou ascii[c] >= 91 e ascii[c] <=96 ou ascii[c] >= 122 e ascii[c] <=126){
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
		simbolo = 0 numeros = 0 letra_minuscula = 0 letra_maiuscula = 0
	}enquanto(simbolo < minimo ou numeros < minimo ou letra_minuscula < minimo ou letra_maiuscula < minimo)
		
	
	
			
	
	escreva("Mínimo: "+minimo+"\n")
	escreva("Símbolo: "+simbolo+"\n")
	escreva("Número: "+numeros+"\n")
	escreva("Letras minúsculas: "+letra_minuscula+"\n")
	escreva("Letras maiúsculas: "+letra_maiuscula+"\n")

	
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
 * @POSICAO-CURSOR = 1500; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = {ascii, 15, 9, 5}-{t, 15, 20, 1}-{minimo, 15, 23, 6}-{simbolo, 15, 31, 7}-{numeros, 15, 44, 7}-{letra_minuscula, 15, 57, 15}-{letra_maiuscula, 15, 78, 15}-{d, 29, 15, 1}-{a, 33, 16, 1}-{b, 34, 17, 1}-{c, 44, 15, 1};
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */