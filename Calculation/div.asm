.data
.text
     
     addi $t0,$zero,30 #li $t0,30
     addi $t1,$zero,5  #li $t1,5
     
     div $t2,$t0,$t1  # $t2 = $t0 / $t1 
     #  div $t2,$t0,5 also valid 
     
     li $v0,1
     add $a0,$zero,$t2 # move $a0,$t2
     syscall