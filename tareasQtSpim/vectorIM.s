	.data  #Zona de datos
vector: .word 25 50 100
	.text   #Zona de instrucciones
main: li $v0, 1			#
      lw $a0,vector($0)
      syscall
      lw $a0,vector+4($0)
      syscall
      lw $a0,vector+8($0)
      syscall

      li $v0,10
      syscall