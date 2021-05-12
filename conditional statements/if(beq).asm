.data
     enter:.asciiz"enter a number: "
     msg1:.asciiz "Equal"
     msg2:.asciiz "Not equal"
.text 
.globl main 
       main:
       #enter first number
       li $v0,4
       la $a0,enter
       syscall
       
       li $v0,5
       syscall
       move $t0,$v0
       
       #enter second number
       li $v0,4
       la $a0,enter
       syscall
       
       li $v0,5
       syscall
       move $t1,$v0
       

       #branch if equal if(a==b)
       beq $t0,$t1,ifEqual
       
       li $v0,4
       la $a0,msg2
       syscall

       li $v0,10
       syscall
       
       ifEqual:
            li $v0,4
            la $a0,msg1
            syscall