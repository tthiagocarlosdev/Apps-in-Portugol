programa {
	inclua biblioteca Util
	funcao topo(){
	    escreva("==================================\n")
	    escreva("           SORTEIA  DADO          \n")
	    escreva("==================================\n")
	}
	
	funcao inicio() {
		//declaração de variáveis
		inteiro dado[200]
		inteiro lado1=0, lado2=0, lado3=0, lado4=0, lado5=0, lado6=0, ladoPar=0, ladoImpar=0
		inteiro percentualLadoPar=0, percentualLadoImpar=0
		
		//sorteio do dado
		para(inteiro contador = 0; contador <= 199; contador++){
		    dado[contador] = Util.sorteia(1, 6)
		    //cálculo para contabilizar quantas vezes cada lado foi sorteado
		    se(dado[contador] == 1){
		        lado1++
		    }
		    se(dado[contador] == 2){
		        lado2++
		    }
		    se(dado[contador] == 3){
		        lado3++
		    }
		    se(dado[contador] == 4){
		        lado4++
		    }
		    se(dado[contador] == 5){
		        lado5++
		    }
		    se(dado[contador] == 6){
		        lado6++
		    }
		    se(dado[contador] % 2 == 0){
		        ladoPar++
		    }
		    se(dado[contador] % 2 == 1){
		        ladoImpar++
		    }
		}
		
		//cálculo para determinar o percentual dos lados pares e ímpares sorteados.
		percentualLadoPar = ((ladoPar * 100) / 200)
		percentualLadoImpar = ((ladoImpar * 100) / 200)
		
		//mostrar o resultado final
		topo()
		escreva("O lado 1 foi sorteado "+lado1+" vezes!\n")
		escreva("O lado 2 foi sorteado "+lado2+" vezes!\n")
		escreva("O lado 3 foi sorteado "+lado3+" vezes!\n")
		escreva("O lado 4 foi sorteado "+lado4+" vezes!\n")
		escreva("O lado 5 foi sorteado "+lado5+" vezes!\n")
		escreva("O lado 6 foi sorteado "+lado6+" vezes!\n")
		escreva("As faces pares foram sorteadas "+ladoPar+" vezes! ")
		escreva("Corresponde a "+percentualLadoPar+"%\n")
		escreva("As faces ímpares foram sorteadas "+ladoImpar+" vezes! ")
		escreva("Corresponde a "+percentualLadoImpar+"%\n")
		escreva("==================================\n")
	}
}
