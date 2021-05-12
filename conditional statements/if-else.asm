.data
     Enter :  .asciiz "Enter a number: "
     equal :  .asciiz "equal numbers "
     Notequal:  .asciiz "not equal number !"
.text
.globl main
       main:
       
       li $v0,4
       la $a0,Enter
       syscall
       
       li $v0,5
       syscall
       move $t0,$v0
       
       li $v0,4
       la $a0,Enter
       syscall
       
       li $v0,5
       syscall
       move $t1,$v0
       
       beq $t0,$t1,ifEqual
       j else
       
       ifEqual:
       li $v0,4
       la $a0,equal
       syscall
       j end
       
       else:
       li $v0,4
       la $a0,Notequal
       syscall
       j end
       
       end:
       li $v0,10
       syscall
       
