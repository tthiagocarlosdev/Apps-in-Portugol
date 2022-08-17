/*
 * ascii - conjunto de caracteres ASCII codificado em octal, decimal e hexadecimal
 * ASCII é o Código Padrão Americano para Intercâmbio de Informações. 
 * Esta função exibe o caracter da tabela Ascii mais compacta em decimal.
 * 
 * Programa desenvolvido por Thiago Carlos.
 *  Contatos:
 * - GitHub: https://github.com/tthiagocarlosdev​
 * - Instagram: https://www.instagram.com/tthiagocarlos.dev/​
 * - Gmail: tthiagocarlos.dev@gmail.com
 */
programa
{
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
	funcao inicio()
	{
		inteiro valor
		
		escreva("Digite um número: ")
		leia(valor)

		escreva(caractereAscii(valor))
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 492; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */