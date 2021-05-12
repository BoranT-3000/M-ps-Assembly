.data 
     endl:.asciiz "\n"
.text
     
     addi $s0,$zero,10
     addi $s1,$zero, 4
     
     mul $t0,$s0,$s1
     
     li $v0,1
     move $a0,$t0
     syscall   
     
     
     ###### New Line
     li $v0,4
     la $a0,endl
     syscall
     
     
     addi $t1,$zero,2000
     addi $t2,$zero,10
     mult $t1,$t2
     
     mflo $t3
     
     li $v0,1
     move $a0,$t3
     syscall
     
     ###### New Line
     li $v0,4
     la $a0,endl
     syscall
     
     
     #### SSL SHİFT LEFT LOGİCAL
     
     addi $s3,$zero,4# li $s0,4 also possible 
   
     sll $t4,$s3,2# 2 nin kuvvetleri şeklinde büyüyor
     #cevap 4x2*2=16
     li $v0,1
     move $a0,$t4
     syscall
     
     