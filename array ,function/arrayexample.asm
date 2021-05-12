.data
firstnumber: .asciiz "first element of array:\n"
endl:        .asciiz "\n"
thirdnumber: .asciiz "Third element of array:\n"
interarr:    .word 17,12,15,27
.text
.globl main
main:
     li $v0,4
     la $a0,firstnumber
     syscall
     
     la $t0,interarr #load address of integearr
     lw $t1,($t0)    #$t1 =integerarr[0]
     
     li $v0,1
     move $a0,$t1
     syscall
     
     li $v0,4
     la $a0,endl
     syscall
     
     li $v0,4
     la $a0,thirdnumber
     syscall
     
     add $t0,$t0,8 #$t0=$t0+8
     lw $t1,($t0)  # $t1= integearr[2]
     
    
     li $v0,1
     move $a0,$t1
     syscall
     
     li $v0,10
     syscall