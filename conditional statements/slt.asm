.data
     msg:  .asciiz "the number is less than other"
     first:.asciiz "first number is bigger than second one"
.text
.globl main
       main:
       li $v0,5
       syscall
       move $t0,$v0
       
       li $v0,5
       syscall
       move $t1,$v0
       
       
       
       #set less than:if t0 is less then t1 then set s0 to 1 else set 0
       slt $s0,$t0,$t1 
       bne $s0,$zero,label
       #branch if not equal
       
      li $v0,4
      la $a0,first
      syscall
       
       li $v0,10
       syscall
       
       label:
             li $v0,4
             la $a0,msg
             syscall
       
       
       
       