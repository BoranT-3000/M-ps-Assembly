.data
.text
.globl main
       main:
	li  $t0, 7		          # int a
	li  $t1, 4		          # int b
	mul $t0, $t0,9 			  # a = a * 9
	add $t1, $t0, $t1		  # b = b + a
	mul $t1, $t1, 8			  # c = 8c
		
	li $v0,1
	move $a0,$t1
	syscall