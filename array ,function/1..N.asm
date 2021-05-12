#will  Compute the sum of N integers: 1 + 2 + 3 + ... + N
.data
     msg1:	 .asciiz	"Number of integers (N)?  "
     msg2:	 .asciiz	"Sum = "
     msg3:      .asciiz	        "div = "
     endl:      .asciiz	"\n"
	.text

	.globl	main
main:
	# Print msg1
	li	$v0,4		# print_string syscall code = 4
	la	$a0, msg1	
	syscall

	# Get N from user and save
	li	$v0,5		# read_int syscall code = 5
	syscall	
	move	$t0,$v0		# syscall results returned in $v0

	# Initialize registers
	li	$t1, 0		# initialize counter (i) =0
	li	$t2, 0		# initialize sum =0

	# Main loop body
loop:	addi	$t1, $t1, 1	# i = i + 1
	add	$t2, $t2, $t1	# sum = sum + i
	beq	$t0, $t1, exit	# if i = N, continue
	j	loop






	# Exit routine - print msg2
exit:	li	$v0, 4		# print_string syscall code = 4
	la	$a0, msg2
	syscall

	# Print sum
	li	$v0,1		# print_string syscall code = 4
	move	$a0, $t2
	syscall
	
	# Print newline
	li	$v0,4		# print_string syscall code = 4
	la	$a0, endl
	syscall
	
	
	################# DİV #####################
        div	$t2, $t2, 10	# div = sum / 10
	#print div
	li	$v0, 4		# print_string syscall code = 4
	la	$a0, msg3
	syscall
	
	li	$v0,1		# print_string syscall code = 4
	move	$a0, $t2
	syscall
        
	

	# Print newline
	li	$v0,4		# print_string syscall code = 4
	la	$a0, endl
	syscall
	
	li	$v0,10		# return 0
	syscall

	# Start .data segment (data!)
