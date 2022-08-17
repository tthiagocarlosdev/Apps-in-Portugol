/* 
 *  Programa desenvolvido por Thiago Carlos, estudante de programação.
 *  Contatos:
 * - GitHub: https://github.com/tthiagocarlosdev​
 * - Instagram: https://www.instagram.com/tthiagocarlos.dev/​
 * - Gmail: tthiagocarlos.dev@gmail.com
 * 
 * GERADOR DE SENHA
 * 	Utilizado a tabela ASCII
 * 	Conter ao menos:
 * 		- 6 caracteres;
 * 		- Letras maiúsculas;
 * 		- Letras minúsculas;
 * 		- Números;
 * 		- Símbolos.
  */
  
programa
{
	inclua biblioteca Tipos	
	inclua biblioteca Util
	
	funcao topo(){
			escreva("--------------------------------\n")
			escreva("------- GERADOR DE SENHA -------\n")
			escreva("--------------------------------\n")						
	}

	funcao cadeia caractereAscii(inteiro numero){
		
		cadeia caractere = ""

		escolha(numero){
			caso 33:
				caractere = "!"
			pare
			caso 34:
				caractere = "\""
			pare
			caso 35:
				caractere = "#"
			pare
			caso 36:
				caractere = "$"
			pare
			caso 37:
				caractere = "%"
			pare
			caso 38:
				caractere = "&"
			pare
			caso 39:
				caractere = "'"
			pare
			caso 40:
				caractere = "("
			pare
			caso 41:
				caractere = ")"
			pare
			caso 42:
				caractere = "*"
			pare
			caso 43:
				caractere = "+"
			pare
			caso 44:
				caractere = ","
			pare
			caso 45:
				caractere = "-"
			pare
			caso 46:
				caractere = "."
			pare
			caso 47:
				caractere = "/"
			pare
			caso 48:
				caractere = "0"
			pare
			caso 49:
				caractere = "1"
			pare
			caso 50:
				caractere = "2"
			pare
			caso 51:
				caractere = "3"
			pare
			caso 52:
				caractere = "4"
			pare
			caso 53:
				caractere = "5"
			pare
			caso 54:
				caractere = "6"
			pare
			caso 55:
				caractere = "7"
			pare
			caso 56:
				caractere = "8"
			pare
			caso 57:
				caractere = "9"
			pare
			caso 58:
				caractere = ":"
			pare
			caso 59:
				caractere = ";"
			pare
			caso 60:
				caractere = "<"
			pare
			caso 61:
				caractere = "="
			pare
			caso 62:
				caractere = ">"
			pare
			caso 63:
				caractere = "?"
			pare
			caso 64:
				caractere = "@"
			pare
			caso 65:
				caractere = "A"
			pare
			caso 66:
				caractere = "B"
			pare
			caso 67:
				caractere = "C"
			pare
			caso 68:
				caractere = "D"
			pare
			caso 69:
				caractere = "E"
			pare
			caso 70:
				caractere = "F"
			pare
			caso 71:
				caractere = "G"
			pare
			caso 72:
				caractere = "H"
			pare
			caso 73:
				caractere = "I"
			pare
			caso 74:
				caractere = "J"
			pare
			caso 75:
				caractere = "K"
			pare
			caso 76:
				caractere = "L"
			pare
			caso 77:
				caractere = "M"
			pare
			caso 78:
				caractere = "N"
			pare
			caso 79:
				caractere = "O"
			pare
			caso 80:
				caractere = "P"
			pare
			caso 81:
				caractere = "Q"
			pare
			caso 82:
				caractere = "R"
			pare
			caso 83:
				caractere = "S"
			pare
			caso 84:
				caractere = "T"
			pare
			caso 85:
				caractere = "U"
			pare
			caso 86:
				caractere = "V"
			pare
			caso 87:
				caractere = "W"
			pare
			caso 88:
				caractere = "X"
			pare
			caso 89:
				caractere = "Y"
			pare
			caso 90:
				caractere = "Z"
			pare
			caso 91:
				caractere = "["
			pare
			caso 92:
				caractere = "\\"
			pare
			caso 93:
				caractere = "]"
			pare
			caso 94:
				caractere = "^"
			pare
			caso 95:
				caractere = "_"
			pare
			caso 96:
				caractere = "`"
			pare
			caso 97:
				caractere = "a"
			pare
			caso 98:
				caractere = "b"
			pare
			caso 99:
				caractere = "c"
			pare
			caso 100:
				caractere = "d"
			pare
			caso 101:
				caractere = "e"
			pare
			caso 102:
				caractere = "f"
			pare
			caso 103:
				caractere = "g"
			pare
			caso 104:
				caractere = "h"
			pare
			caso 105:
				caractere = "i"
			pare
			caso 106:
				caractere = "j"
			pare
			caso 107:
				caractere = "k"
			pare
			caso 108:
				caractere = "l"
			pare
			caso 109:
				caractere = "m"
			pare
			caso 110:
				caractere = "n"
			pare
			caso 111:
				caractere = "o"
			pare
			caso 112:
				caractere = "p"
			pare
			caso 113:
				caractere = "q"
			pare
			caso 114:
				caractere = "r"
			pare
			caso 115:
				caractere = "s"
			pare
			caso 116:
				caractere = "t"
			pare
			caso 117:
				caractere = "u"
			pare
			caso 118:
				caractere = "v"
			pare
			caso 119:
				caractere = "w"
			pare
			caso 120:
				caractere = "x"
			pare
			caso 121:
				caractere = "y"
			pare
			caso 122:
				caractere = "z"
			pare
			caso 123:
				caractere = "{"
			pare
			caso 124:
				caractere = "|"
			pare
			caso 125:
				caractere = "}"
			pare
			caso 126:
				caractere = "~"
			pare
			caso 127:
				caractere = "DEL"
			pare
			caso contrario:
				caractere = "Número Inválido!"
		}
		
		retorne caractere
	}
		
	funcao inicio(){
		inteiro ascii[93], t, minimo, simbolo = 0, numeros = 0, letra_minuscula = 0, letra_maiuscula = 0
		cadeia senha[93]
		logico letra, quantidade_caracteres = falso
		cadeia cad
		
		topo()
		escreva("Digite o tamanho de sua senha [6-91]: ")
		leia(cad)
		escreva("--------------------------------\n")

		//validação de inteiro
		letra = Tipos.cadeia_e_inteiro(cad, 10)
		enquanto(letra == falso){
			limpa()
			escreva("==== ATENÇÃO! ====\n")
			escreva("Valor incorreto!\n")
			escreva("Digite outro valor [6-91]: ")
			leia(cad)
			letra = Tipos.cadeia_e_inteiro(cad, 10)
		}
		
		//validação do tamanho da senha
		t = Tipos.cadeia_para_inteiro(cad, 10)
		enquanto (t < 6 ou t > 91){
			limpa()
			se (t < 6){
				escreva("==== ATENÇÃO! ====\n")
				escreva("Valor menor que 6, senha muito insegura!\n")
				escreva("Digite outro valor [6-91]: ")
				leia(t)
			}
			senao se (t > 91){
				escreva("==== ATENÇÃO! ====\n")
				escreva("Valor indisponível!\n")
				escreva("Digite outro valor [6-91]: ")
				leia(t)
			}
		}

		minimo = t/4
		limpa()
		
		//sorteio do valores da escala ascii
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
		
		//confecção de senha a partir da tabela ascii
		para(inteiro c = 0; c < t; c++) {
			senha[c] = caractereAscii(ascii[c])	
		}

		//revelando a senha
		topo()
		escreva("A senha contém ", t, " caracteres!\n")
		escreva("Sua senha é: ")
		para(inteiro i = 0; i < t; i++) {
			escreva(senha[i], "")}
		escreva("\n--------------------------------")
		escreva("\n")
		//escreva("Mínimo: "+minimo+"\n")
		escreva("Sua senha tem: \n")
		escreva(simbolo+" símbolo(s);\n")
		escreva(numeros+" número(s);\n")
		escreva(letra_minuscula+" letra(s) minúscula(s);\n")
		escreva(letra_maiuscula+" letra(s) maiúscula(s)!\n")
		escreva("--------------------------------")
	}
}

/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 4711; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = {ascii, 327, 10, 5}-{senha, 328, 9, 5};
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */