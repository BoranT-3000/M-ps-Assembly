.data
     msg:.asciiz "owww yea this is blt"
.text
.globl main
       main:
       li $t0,21
       li $t1,42
       
       #branch if less than
       blt $t0,$t1,display
       
       li $v0,10s
       syscall
       
       display:
       li $v0,4
       la $a0,msg
       syscall