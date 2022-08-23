# Serie simple
.data
	newline:.asciiz "\n"
.text

iniz:
li $s1,0
li $s2,1
li $s0,20
li $s4,1
j main	


main:
   beq $s0,$0, iniz
   ble $s4,$s0, sum
   li $v0,10   	       #Funtion 10, exit
   syscall             #Acaba el programa  
   
sum:	
   move $a0,$s1			#Valor a escribir en $a0
   add $a3,$s1,$s2
   move $s1,$s2
   move $s2,$a3
   li $v0,1
   syscall
   la $a0,newline
   li $v0,4		 #Función 4, print string 
   syscall 
   addiu $s4,$s4,1
   jal main



	