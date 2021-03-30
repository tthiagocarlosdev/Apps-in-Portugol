/* 
 *  Programa desenvolvido por Thiago Carlos, estudante de programação.
 *  Contatos:
 * - GitHub: https://github.com/tthiagocarlosdev​
 * - Instagram: https://www.instagram.com/tthiagocarlos.dev/​
 * - Gmail: tthiagocarlos.dev@gmail.com
 * 
 * VALIDAÇÃO DE INTEIRO:
 * Neste programa você pode validar se um número digitado é um número inteiro.
 * A função "valida_numero" recebe um valor de tipo cadeia, mas retorna inteiro.
 * 
 * Detalhe, mesmo o valor sendo do tipo cadeia, o usuário só poderá digitar um 
 * valor que seja inteiro, pois só a ssim o programa será encerrado.
 * 
 * A faixa de valores inteiros que serão permitidos será determinada na seção 
 * "validaçao de valores" dentro da função "valida_numero".
 * 
 * 	
  */

programa
{
	
	inclua biblioteca Tipos --> t
	funcao inteiro valida_numero(cadeia Num){
		//cadeia Num
		logico teste
		inteiro NumA
		
		//escreva("Digite um número: ")
		//leia(Num)
		//validação de número
		teste = t.cadeia_e_inteiro(Num, 10)
		enquanto (teste == falso){
			limpa()
			escreva("Digite um número: ")
			leia(Num)	
			teste = t.cadeia_e_inteiro(Num, 10)
		}
		//validação de valores
		NumA = t.cadeia_para_inteiro(Num, 10)
		enquanto (NumA < 1 ou NumA > 3){
			limpa()
			escreva("Digite um número: ")
			leia(Num)
			NumA = t.cadeia_para_inteiro(Num, 10)
		}
		retorne NumA
	}

	
	funcao inicio(){
	cadeia A
	inteiro B
	escreva("Digite A: ")
	leia(A)
	B = valida_numero(A)
	limpa()
	escreva("Número digitado: "+B)
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 244; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */