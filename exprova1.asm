 #Construa um programa em Assembly MIPS que leia execute a seguinte opera��o: 
 #(a+b)*(a-c), onde a=5, b=10 e c=2. Submeta um arquivo do MARS .asm ou um aquivo .txt 	
.text
	li $t1, 5 # Atribuindo o valor 5 ao registrador $t0
	li $t2, 10 # Atribuindo o valor 5 ao registrador $t1
	li $t3, 2 # Atribuindo o valor 2	 ao registrador $t2
	
	# Realizando a primeira opera��o(a+b)
	add $t0, $t1, $t2 # Realizando a soma de (a + b) e passando o resultado para o registrador $t0
	sub $t4, $t1, $t3 # Realizando a subtra��o de (a-c) e passando or esultado para o registrador $t4
	
	# Realizando a multiplica��o 
	mul $t5, $t0, $t4 # Realizando a multiplica��o e passando o resultado para o registrador $t5
	
	li $v0, 1 # Comando para impress�o de inteiro
	move $a0, $t5 #movendo o resultado da multiplica��o para $a0 
	syscall #Run
	  