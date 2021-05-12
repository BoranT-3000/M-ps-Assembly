.data     
     num1:.word 20
     num2:.word 20
.text
    lw $t0,num1($zero)
    lw $t1,num2($zero)
    
    add $t2,$t1,$t0
    
    li $v0,1
    add $a0,$zero,$t2 # (same) move $a0,$t2
    syscall
