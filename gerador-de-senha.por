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
			se (ascii[c] == 33){
				senha[c] = "!"
			}
			senao se (ascii[c] == 34){
				senha[c] = "'"
			}
			senao se (ascii[c] == 35){
				senha[c] = "#"
			}
			senao se  (ascii[c] == 36){
				senha[c] = "$"
			}
			senao se  (ascii[c] == 37){
				senha[c] = "%"
			}
			senao se  (ascii[c] == 38){
				senha[c] = "&"
			}
			senao se  (ascii[c] == 39)// """ CARACTER NÃO DISPONÍVEL
			{
				senha[c] = " "
			}
			senao se  (ascii[c] == 40){
				senha[c] = "("
			}
			senao se  (ascii[c] == 41){
				senha[c] = ")"
			}
			senao se  (ascii[c] == 42){
				senha[c] = "*"
			}
			senao se  (ascii[c] == 43){
				senha[c] = "+"
			}
			senao se  (ascii[c] == 44){
				senha[c] = ","
			}
			senao se  (ascii[c] == 45){
				senha[c] = "-"
			}
			senao se  (ascii[c] == 46){
				senha[c] = "."
			}
			senao se  (ascii[c] == 47){
				senha[c] = "/"
			}
			senao se  (ascii[c] == 48){
				senha[c] = "0"
			}
			senao se  (ascii[c] == 49){
				senha[c] = "1"
			}
			senao se  (ascii[c] == 50){
				senha[c] = "2"
			}
			senao se  (ascii[c] == 51){
				senha[c] = "3"
			}
			senao se  (ascii[c] == 52){
				senha[c] = "4"
			}
			senao se  (ascii[c] == 53){
				senha[c] = "5"
			}
			senao se  (ascii[c] == 54){
				senha[c] = "6"
			}
			senao se  (ascii[c] == 55){
				senha[c] = "7"
			}
			senao se  (ascii[c] == 56){
				senha[c] = "8"
			}
			senao se  (ascii[c] == 57){
				senha[c] = "9"
			}
			senao se  (ascii[c] == 58){
				senha[c] = ":"
			}
			senao se  (ascii[c] == 59){
				senha[c] = ";"
			}
			senao se  (ascii[c] == 60){
				senha[c] = "<"
			}
			senao se  (ascii[c] == 61){
				senha[c] = "="
			}
			senao se  (ascii[c] == 62){
				senha[c] = ">"
			}
			senao se  (ascii[c] == 63){
				senha[c] = "?"
			}
			senao se  (ascii[c] == 64){
				senha[c] = "@"
			}
			senao se  (ascii[c] == 65){
				senha[c] = "A"
			}
			senao se  (ascii[c] == 66){
				senha[c] = "B"
			}
			senao se  (ascii[c] == 67){
				senha[c] = "C"
			}
			senao se  (ascii[c] == 68){
				senha[c] = "D"
			}
			senao se  (ascii[c] == 69){
				senha[c] = "E"
			}
			senao se  (ascii[c] == 70){
				senha[c] = "F"
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
 * @POSICAO-CURSOR = 0; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = {t, 30, 21, 1}-{letra, 32, 9, 5}-{cad, 33, 9, 3};
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */