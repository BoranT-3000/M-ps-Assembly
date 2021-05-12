.data
     num1: .float 2.45
     num2: .float 3.78
     endl:.asciiz "\n"
.text
.globl main
       main:
       #load word to coproc1
       lwc1 $f2,num1 #ldc1 load double coproc1
       lwc1 $f4,num2 #ldc1
       
       add.s $f12,$f2,$f4 #add.d for double

       li $v0,2 #if double use 3 
       syscall
       
       
       li $v0,4
       la $a0,endl
       syscall
       
       mul.s $f12,$f2,$f4 #for double mul.d
  
       li $v0,2 #if double use 3 
       syscall
            
       
       