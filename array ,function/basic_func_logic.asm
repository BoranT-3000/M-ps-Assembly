.data
     n:.asciiz "\n"
.text
     main:
     addi $a1,$zero,100
     addi $a2,$zero,50
     
     jal addnumbers
     
     li $v0,1
     move $a0,$v1
     syscall
     
     li $v0,4
     la $a0,n
     syscall
     
     jal substract
     
     li $v0,1
     move $a0,$v1
     syscall
     
     li $v0,10
     syscall
     
     addnumbers:
     add $v1,$a1,$a2
     jr $ra
     
     substract:
     sub $v1,$a1,$a2
     jr $ra
  






