.data
     prompt1:     .asciiz "Enter first number  : "
     prompt2:     .asciiz "Enter second number : " 
     menu:        .asciiz "1.Add 2.Sub 3.Mul 4.Div : "
     result:      .asciiz "your result is : "
     remainder:   .asciiz "\nremainder: "
     quotient:    .asciiz "remainder: "
.text
.globl main
main:
     li $t3,1
     li $t4,2
     li $t5,3
     li $t6,4
     
     #ask number1
     li $v0,4
     la $a0,prompt1
     syscall
     li $v0,5#input body
     syscall
     move $t0,$v0#input
     
     #ask number2
     li $v0,4
     la $a0,prompt2
     syscall
     li $v0,5
     syscall
     move $t1,$v0
     
     #ask menu
     li $v0,4
     la $a0,menu
     syscall
     li $v0,5
     syscall 
     move $t2,$v0
     
     #control instruction for menu
     #t2 is our input for control
     beq $t2,$t3,Addprocess #if(t2=t3)
     beq $t2,$t4,Subprocess
     beq $t2,$t5,Mulprocess
     beq $t2,$t6,Divprocess
     
     Addprocess:
      add $t7,$t0,$t1
      li $v0,4
      la $a0,result
      syscall
      li $v0,1
      la,$a0,($t7)
      syscall
      li $v0,10 #return 0
      syscall
      
     Subprocess:
       sub $t7,$t0,$t1
       li $v0,4
       la $a0,result
       syscall 
       li $v0,1
       la $a0,($t7)
       syscall 
       li $v0,10
       syscall                        
     
     Mulprocess:
        mult $t0,$t1
        mflo $s0
        
        li $v0,4
        la $a0,result
        syscall
        
        li $v0,1
        add $a0,$zero,$s0
        syscall
        
        li $v0,10
        syscall
     
     Divprocess:
        div $t0,$t1
        mflo $s0 #quotient
        mfhi $s1 #remainder
        
        li $v0,4
        la $a0,quotient
        syscall
        li $v0,1
        move $a0,$s0
        syscall
        
        li $v0,4
        la $a0,remainder
        syscall
        li $v0,1
        move $a0,$s1
        syscall
        
        li $v0,10
        syscall#return 0
        
     
