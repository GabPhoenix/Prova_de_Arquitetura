# Escreva um programa em Assembly MIPS que l� dois n�meros e verifica 
# qual o maior deles. Submeta um arquivo do MARS .asm ou um aquivo .txt 

.data	
	msg_1: .asciiz "Informe um numero: "
	msg_2: .asciiz "Informe outro numero: "
	msg_3: .asciiz "Os valores informados s�o iguais"
	msg_4: .asciiz "O maior numero e: "
.text 
	li $v0, 4 # Comando de impress�o de String 
	la $a0, msg_1 # Passando o endera�o da primeira mensagem
	syscall 
	
	# recebendo o primero n�mero 
	li $v0, 5 # Comando para receber um inteiro 
	syscall 
	
	move $t0, $v0 # Movendo o valor informado para o registrador $t0
	
	li $v0, 4 # Comando de impress�o de String 
	la $a0, msg_2 # Passando o endera�o da segunda mensagem
	syscall 
	
	# recebendo o segundo n�mero 
	li $v0, 5 # Comando para receber um inteiro 
	syscall 
	
	move $t1, $v0 # Movendo o valor informado para o registrador $t1
	
	beq $t0, $t1 iguais # Os valores s�o iguais
	bgt $t0, $t1 maior1 # imprimindo o maior
	bgt $t1, $t0 maior2 # imprimindo o maior
	
	iguais: li $v0, 4 #Instu��o para imprimir String 
	la $a0, msg_3 # Passando o endere�o da mensagem 
	syscall #run
	li $v0, 10 # Comando para encerrar o programar (para n�o ir para o pr�ximo m�todo)
	syscall 
	
	maior1: li $v0, 4 #Instu��o para imprimir String 
	la $a0, msg_4 # Passando o endere�o da mensagem 
	syscall #run
	li $v0, 1 #Instu��o para imprimir um inteiro 
	move $a0, $t0 # movendo o valor
	syscall #run
	li $v0, 10 # Comando para encerrar o programar (para n�o ir para o pr�ximo m�todo)
	syscall # run
	
	maior2: li $v0, 4 #Instu��o para imprimir String 
	la $a0, msg_4 # Passando o endere�o da mensagem 
	syscall #run
	li $v0, 1 #Instu��o para imprimir um inteiro 
	move $a0, $t1 # passando o endere�o
	syscall #run
	li $v0, 10 # Comando para encerrar o programar (para n�o ir para o pr�ximo m�todo)
	syscall # run
	