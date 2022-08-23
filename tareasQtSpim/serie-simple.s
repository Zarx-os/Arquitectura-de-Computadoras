# Serie simple
.data
	newline:.asciiz "\n"
.text

iniz:
li $a3,1
li $s0,50
jal main	


main:
   beq $s0,$0,iniz   
   ble $a3,$s0,sum
   addi $v0, $0, 10   #Funtion 10, exit
   syscall            #Acaba el programa  
   
sum:	
   move $a0,$a3	#Valor a escribir en $a0
   addiu $a3,$a3,1
   li $v0,1
   syscall
   la $a0,newline
   li $v0,4		 	#Función 4, print string 
   syscall 
   jal main	