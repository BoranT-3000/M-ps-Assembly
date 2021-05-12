.data
     msg:.asciiz "anyway you wanted"
.text
.globl main
       main:
       addi $t0,$zero,45
       addi $t1,$zero,78
       
       b anyway #either way you will continue with the link
       
       li $v0,10
       syscall
       
       anyway:
       li $v0,4
       la $a0,msg
       syscall