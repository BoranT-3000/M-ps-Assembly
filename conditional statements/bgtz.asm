.data
     msg:.asciiz "owww yea this is bgtz"
.text
.globl main
       main:
       li $v0,5
       syscall
       move $t0,$v0
       
       #means branch if grater than 0 if a>0
       bgtz $t0,display
       
       li $v0,10
       syscall
       
       display:
       li $v0,4
       la $a0,msg
       syscall