.data
     arr: .word 4,5,0,0 #5:3 = 5 5 5 
     endl:.asciiz "\n"
  
.text
.globl main
       main:

       
       while:
             beq $t0,16,exit
             lw $t6,arr($t0)
             addi $t0,$t0,4
             
             li $v0,1
             move $a0,$t6
             syscall
             
             li $v0,4
             la $a0,endl
             syscall
             
             j while
       exit:
            li $v0,10
            syscall
             
       
       