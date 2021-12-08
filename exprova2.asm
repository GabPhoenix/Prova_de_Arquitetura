# Escreva um programa em Assembly MIPS que lê dois números e verifica 
# qual o maior deles. Submeta um arquivo do MARS .asm ou um aquivo .txt 

.data	
	msg_1: .asciiz "Informe um numero: "
	msg_2: .asciiz "Informe outro numero: "
	msg_3: .asciiz "Os valores informados são iguais"
	msg_4: .asciiz "O maior numero e: "
.text 
	li $v0, 4 # Comando de impressão de String 
	la $a0, msg_1 # Passando o enderaço da primeira mensagem
	syscall 
	
	# recebendo o primero número 
	li $v0, 5 # Comando para receber um inteiro 
	syscall 
	
	move $t0, $v0 # Movendo o valor informado para o registrador $t0
	
	li $v0, 4 # Comando de impressão de String 
	la $a0, msg_2 # Passando o enderaço da segunda mensagem
	syscall 
	
	# recebendo o segundo número 
	li $v0, 5 # Comando para receber um inteiro 
	syscall 
	
	move $t1, $v0 # Movendo o valor informado para o registrador $t1
	
	beq $t0, $t1 iguais # Os valores são iguais
	bgt $t0, $t1 maior1 # imprimindo o maior
	bgt $t1, $t0 maior2 # imprimindo o maior
	
	iguais: li $v0, 4 #Instução para imprimir String 
	la $a0, msg_3 # Passando o endereço da mensagem 
	syscall #run
	li $v0, 10 # Comando para encerrar o programar (para não ir para o próximo método)
	syscall 
	
	maior1: li $v0, 4 #Instução para imprimir String 
	la $a0, msg_4 # Passando o endereço da mensagem 
	syscall #run
	li $v0, 1 #Instução para imprimir um inteiro 
	move $a0, $t0 # movendo o valor
	syscall #run
	li $v0, 10 # Comando para encerrar o programar (para não ir para o próximo método)
	syscall # run
	
	maior2: li $v0, 4 #Instução para imprimir String 
	la $a0, msg_4 # Passando o endereço da mensagem 
	syscall #run
	li $v0, 1 #Instução para imprimir um inteiro 
	move $a0, $t1 # passando o endereço
	syscall #run
	li $v0, 10 # Comando para encerrar o programar (para não ir para o próximo método)
	syscall # run
	