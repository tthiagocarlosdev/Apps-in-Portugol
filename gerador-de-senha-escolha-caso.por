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
		
	funcao inicio(){
		inteiro ascii[93], numero_de_caracteres, minimo, simbolo = 0, numeros = 0, letra_minuscula = 0, letra_maiuscula = 0
		cadeia senha[93]
		logico letra, quantidade_caracteres = falso
		cadeia cad
		
		topo()
		escreva("Digite o tamanho de sua senha [6-39]: ")
		leia(cad)
		escreva("--------------------------------\n")

		//validação de inteiro
		letra = Tipos.cadeia_e_inteiro(cad, 10)
		enquanto(letra == falso){
			limpa()
			escreva("==== ATENÇÃO! ====\n")
			escreva("Valor incorreto!\n")
			escreva("Digite outro valor [6-39]: ")
			leia(cad)
			letra = Tipos.cadeia_e_inteiro(cad, 10)
		}
		
		//validação do tamanho da senha
		numero_de_caracteres = Tipos.cadeia_para_inteiro(cad, 10)
		enquanto (numero_de_caracteres < 6 ou numero_de_caracteres > 39){
			limpa()
			se (numero_de_caracteres < 6){
				escreva("==== ATENÇÃO! ====\n")
				escreva("Valor menor que 6, senha muito insegura!\n")
				escreva("Digite outro valor [6-91]: ")
				leia(numero_de_caracteres)
			}
			senao se (numero_de_caracteres > 39){
				escreva("==== ATENÇÃO! ====\n")
				escreva("Valor indisponível!\n")
				escreva("Digite outro valor [6-91]: ")
				leia(numero_de_caracteres)
			}
		}

		minimo = numero_de_caracteres/4
		limpa()
		
		//sorteio do valores da escala ascii
		enquanto(quantidade_caracteres == falso){
			//sorteio do valores da escala ascii
		    	para(inteiro d = 0; d < numero_de_caracteres; d++) {
				ascii[d] = Util.sorteia(33, 126)
		    	}		
		    	//validação para não repetir caracteres na senha
		    	para (inteiro a = 0; a < numero_de_caracteres-1; a++){
				para (inteiro b = a+1; b < numero_de_caracteres; b++){
				    enquanto (ascii[a] == ascii[b]){
					    ascii[b] = Util.sorteia(33, 126)
						    a = 0
						    b = 1
					}		
			    	}
		    	}
			
			//validação quantidade dos tipos de caracteres
			para(inteiro c = 0; c < numero_de_caracteres; c++){
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
		para(inteiro c = 0; c < numero_de_caracteres; c++) {
			escolha(ascii[c]){
				caso 33:
					senha[c] = "!"
				pare
				caso 34:
					senha[c] = "'"
				pare
				caso 35:
					senha[c] = "#"
				pare
				caso 36:
					senha[c] = "$"
				pare
				caso 37:
					senha[c] = "%"
				pare
				caso 38:
					senha[c] = "&"
				pare
				caso 39:
					senha[c] = "\""
				pare
				caso 40:
					senha[c] = "("
				pare
				caso 41:
					senha[c] = ")"
				pare
				caso 42:
					senha[c] = "*"
				pare
				caso 43:
					senha[c] = "+"
				pare
				caso 44:
					senha[c] = ","
				pare
				caso 45:
					senha[c] = "-"
				pare
				caso 46:
					senha[c] = "."
				pare
				caso 47:
					senha[c] = "/"
				pare
				caso 48:
					senha[c] = "0"
				pare
				caso 49:
					senha[c] = "1"
				pare
				caso 50:
					senha[c] = "2"
				pare
				caso 51:
					senha[c] = "3"
				pare
				caso 52:
					senha[c] = "4"
				pare
				caso 53:
					senha[c] = "5"
				pare
				caso 54:
					senha[c] = "6"
				pare
				caso 55:
					senha[c] = "7"
				pare
				caso 56:
					senha[c] = "8"
				pare
				caso 57:
					senha[c] = "9"
				pare
				caso 58:
					senha[c] = ":"
				pare
				caso 59:
					senha[c] = ";"
				pare
				caso 60:
					senha[c] = "<"
				pare
				caso 61:
					senha[c] = "="
				pare
				caso 62:
					senha[c] = ">"
				pare
				caso 63:
					senha[c] = "?"
				pare
				caso 64:
					senha[c] = "@"
				pare
				caso 65:
					senha[c] = "A"
				pare
				caso 66:
					senha[c] = "B"
				pare
				caso 67:
					senha[c] = "C"
				pare
				caso 68:
					senha[c] = "D"
				pare
				caso 69:
					senha[c] = "E"
				pare
				caso 70:
					senha[c] = "F"
				pare
			}
			
			
			senao se  (ascii[c] == 71){
				senha[c] = "G"
			}
			senao se  (ascii[c] == 72){
				senha[c] = "H"
			}
			senao se  (ascii[c] == 73){
				senha[c] = "I"
			}
			senao se  (ascii[c] == 74){
				senha[c] = "J"
			}
			senao se  (ascii[c] == 75){
				senha[c] = "K"
			}
			senao se  (ascii[c] == 76){
				senha[c] = "L"
			}
			senao se  (ascii[c] == 77){
				senha[c] = "M"
			}
			senao se  (ascii[c] == 78){
				senha[c] = "N"
			}
			senao se  (ascii[c] == 79){
				senha[c] = "O"
			}
			senao se  (ascii[c] == 80){
				senha[c] = "P"
			}
			senao se  (ascii[c] == 81){
				senha[c] = "Q"
			}
			senao se  (ascii[c] == 82){
				senha[c] = "R"
			}
			senao se  (ascii[c] == 83){
				senha[c] = "S"
			}
			senao se  (ascii[c] == 84){
				senha[c] = "T"
			}
			senao se  (ascii[c] == 85){
				senha[c] = "U"
			}
			senao se  (ascii[c] == 86){
				senha[c] = "V"
			}
			senao se  (ascii[c] == 87){
				senha[c] = "W"
			}
			senao se  (ascii[c] == 88){
				senha[c] = "X"
			}
			senao se  (ascii[c] == 89){
				senha[c] = "Y"
			}
			senao se  (ascii[c] == 90){
				senha[c] = "Z"
			}
			senao se  (ascii[c] == 91){
				senha[c] = "["
			}
			senao se  (ascii[c] == 92)
			{
				senha[c] = "\\"
			}
			senao se  (ascii[c] == 93){
				senha[c] = "]"
			}
			senao se  (ascii[c] == 94){
				senha[c] = "^"
			}
			senao se  (ascii[c] == 95){
				senha[c] = "_"
			}
			senao se  (ascii[c] == 96){
				senha[c] = "`"
			}
			senao se  (ascii[c] == 97){
				senha[c] = "a"
			}
			senao se  (ascii[c] == 98){
				senha[c] = "b"
			}
			senao se  (ascii[c] == 99){
				senha[c] = "c"
			}
			senao se  (ascii[c] == 100){
				senha[c] = "d"
			}
			senao se  (ascii[c] == 101){
				senha[c] = "e"
			}
			senao se  (ascii[c] == 102){
				senha[c] = "f"
			}
			senao se  (ascii[c] == 103){
				senha[c] = "g"
			}
			senao se  (ascii[c] == 104){
				senha[c] = "h"
			}
			senao se  (ascii[c] == 105){
				senha[c] = "i"
			}
			senao se  (ascii[c] == 106){
				senha[c] = "j"
			}
			senao se  (ascii[c] == 107){
				senha[c] = "k"
			}
			senao se  (ascii[c] == 108){
				senha[c] = "l"
			}
			senao se  (ascii[c] == 109){
				senha[c] = "m"
			}
			senao se  (ascii[c] == 110){
				senha[c] = "n"
			}
			senao se  (ascii[c] == 111){
				senha[c] = "o"
			}
			senao se  (ascii[c] == 112){
				senha[c] = "p"
			}
			senao se  (ascii[c] == 113){
				senha[c] = "q"
			}
			senao se  (ascii[c] == 114){
				senha[c] = "r"
			}
			senao se  (ascii[c] == 115){
				senha[c] = "s"
			}
			senao se  (ascii[c] == 116){
				senha[c] = "t"
			}
			senao se  (ascii[c] == 117){
				senha[c] = "u"
			}
			senao se  (ascii[c] == 118){
				senha[c] = "v"
			}
			senao se  (ascii[c] == 119){
				senha[c] = "w"
			}
			senao se  (ascii[c] == 120){
				senha[c] = "x"
			}
			senao se  (ascii[c] == 121){
				senha[c] = "y"
			}
			senao se  (ascii[c] == 122){
				senha[c] = "z"
			}
			senao se  (ascii[c] == 123){
				senha[c] = "{"
			}
			senao se  (ascii[c] == 124){
				senha[c] = "|"
			}
			senao se  (ascii[c] == 125){
				senha[c] = "}"
			}
			senao se  (ascii[c] == 126){
				senha[c] = "~"
			}
		}

		//revelando a senha
		topo()
		escreva("A senha contém ", numero_de_caracteres, " caracteres!\n")
		escreva("Sua senha é: ")
		para(inteiro i = 0; i < numero_de_caracteres; i++) {
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
 * @POSICAO-CURSOR = 5055; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */