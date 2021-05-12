.data
     arr: .space 40
     endl:.asciiz "\n"
     enter:.asciiz "Enter a number: "
.text
.globl main
       main:
       
       addi $s0,$zero,99
       addi $s1,$zero,45
       addi $s2,$zero,66
       addi $s3,$zero,1
       
       addi $t0,$zero,0
       
       sw $s0,arr($t0)
       addi $t0,$t0,4
       sw $s1,arr($t0)
       addi $t0,$t0,4
       sw $s2,arr($t0)
       addi $t0,$t0,4
       sw $s3,arr($t0)
       
       addi $t0,$zero,0
       
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
             
       
       