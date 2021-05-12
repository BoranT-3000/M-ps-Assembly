# Sum of three integer number

.data
     Enter: .asciiz "Please enter three numbers: \n"
     sum:   .asciiz "The sum is: "
.text
.globl main
main:
     li $v0,4
     la $a0,Enter # display prompt string
     syscall

     li $v0,5 # read 1st integer into $t0
     syscall
     move $t0,$v0

     li $v0,5 # read 2nd integer into $t1
     syscall
     move $t1,$v0

     li $v0,5 # read 3rd integer into $t2
     syscall
     move $t2,$v0

     addu $t0,$t0,$t1 # accumulate the sum a=a+b
     addu $t0,$t0,$t2 #a=a+c

     li $v0,4
     la $a0,sum# write sum message
     syscall

     li $v0,1
     add $a0,$zero,$t0 # output sum 
     syscall

     li $v0,10 # exit
     syscall




