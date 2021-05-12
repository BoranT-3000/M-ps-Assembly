.data 
.text 
.globl main 
       main:
  
li $s0,7
move $a0,$s0

jal inc
move $s1,$v0
j exit

inc:
addi $s1,$s0,1

li $v0,1
move $a0,$s1
syscall

jr $ra

exit:


li $v0,10
syscall
  
   
    
    
    



  
     
