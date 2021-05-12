.data
     arr:.space 12
.text
     addi $s0,$zero,7 #arr[0]
     addi $s1,$zero,48
     addi $s2,$zero,29
     
     #index = $t0
     addi $t0,$zero,0
     
      sw $s0,arr($t0)
      addi $t0,$t0,4
      sw $s1,arr($t0)
      addi $t0,$t0,4
      sw $s2,arr($t0)
      
      
      lw $t6,arr($t0)
      
      li $v0,1
      addi $a0,$t6,0
      syscall