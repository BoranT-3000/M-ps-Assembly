.data
      msg:  .asciiz "loop is finished "
      endl: .asciiz "\n"
      space:.asciiz ", "
.text
.globl main 
       main:
       
       addi $t0,$zero,0 # i=0
       
       while:
          bgt $t0,10,exit # if 0<=10
          jal printfunction
          addi $t0,$t0,1  #i=i+1 or i++
          j while 
          
       exit:
          li $v0,4
          la $a0,msg
          syscall
          
          li $v0,10
          syscall
          
       printfunction:
          li $v0,1
          add $a0,$t0,$zero
          syscall
          
          li $v0,4
          la $a0,space
          syscall
          
          jr $ra  