programa
{
	//Funções
	
	funcao cabecalho(){
		escreva("=====================\n")
		escreva(" SISTEMA DE CADASTRO \n")
		escreva("=====================\n")
	}
	
	funcao inteiro quantidadeDeUsuariosCadastrados(){
		
		inteiro quantidadeUsuarios
		
		escreva("Quantos usuários serão cadastrados?\n")
		leia(quantidadeUsuarios)
		limpa()
		
		retorne quantidadeUsuarios
	}
	
	funcao inteiro menu(){
		
		inteiro opcaoMenu
		
		escreva("MENU DE OPÇÕES\n")
		escreva("[1] Cadastrar Novo usuário.\n")
		escreva("[2] Listar o usuário Cadastrado.\n")
		escreva("[3] Sair do Sistema.\n")
		leia(opcaoMenu)
		limpa()
		
		retorne opcaoMenu
		
		}


	funcao finalDoPrograma(){
		escreva("=====================\n")
		escreva(" SISTEMA FINALIZADO \n")
		escreva("=====================\n")
	}

	// início do programa
	funcao inicio()
	{
		inteiro opcao, quantidadeDeUsuarios
		cadeia nomeUsuarios[1]
		inteiro idadeUsuarios[1]
		
		cabecalho()
		quantidadeDeUsuarios = quantidadeDeUsuariosCadastrados()
		
		faca{
			
			cabecalho()
			opcao = menu()
			
			escolha(opcao){
				caso 1:
					para(inteiro contador = 0; contador < quantidadeDeUsuarios; contador++){
						cabecalho()
						escreva("Digite o nome do ",contador+1,"º usuário: \n")
						leia(nomeUsuarios[contador])
						escreva("Qual a idade de ",nomeUsuarios[contador],"? \n")
						leia(idadeUsuarios[contador])
						limpa()
					}
				pare
				caso 2:
					cabecalho()
					para(inteiro contador = 0; contador < quantidadeDeUsuarios; contador++){
						escreva("Usuário nº" ,contador+1,": ", nomeUsuarios[contador]," | Idade: ",idadeUsuarios[contador]," anos!\n")
					}
				pare
			}
			
		}enquanto(opcao != 3)
		
		limpa()
		finalDoPrograma()
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 1577; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */