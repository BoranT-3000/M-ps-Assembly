.data
     msg:.asciiz "owww yea this is bgt"
.text
.globl main
       main:
       li $t0,14
       li $t1,10
       
       bgt $t0,$t1,display
       
       li $v0,10
       syscall
       
       display:
       li $v0,4
       la $a0,msg
       syscall
       