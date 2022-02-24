programa
{
	inclua biblioteca Texto
	
	
	funcao inicio()
	{
		cadeia nome, espelhado = ""
		inteiro tamanho=0
		caracter nomeVetor[255]
		
		escreva("Digite seu nome: ")
		leia(nome)
		tamanho = Texto.numero_caracteres(nome)
		para(inteiro contador = tamanho -2; contador >=0; contador--){
			nomeVetor[contador] = Texto.obter_caracter(nome, contador)
			espelhado += nomeVetor[contador]
		}
		//escreva("O tamanho do seu nome é "+tamanho+"\n")
		//escreva("O seu nome ao contrário: "+espelhado+"\n")
		cadeia string = nome + espelhado
		inteiro tamanhoString = Texto.numero_caracteres(string)
		
		
		faca{
			escreva(string+"\n")
			tamanho--
		}enquanto(tamanho >=1)
		
		escreva("O tamanho da string é "+tamanhoString+"\n")
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 615; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */