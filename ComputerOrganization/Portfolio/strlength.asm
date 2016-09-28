# Justin VanWinkle 10/05/2015
# strlength.asm-- A program that determine the length of a null terminated string
# Registers used:
# $t0 - used to hold the loop counter
# $a0 - used to hold the address of string
# $v0 - syscall parameter and return value

.data

	str: .asciiz "abcde"

.text

		
		la $a0, str	# Load address of string into a0

	strlen:
		li $t0, 0 	# initialize the count to zero
		
	loop:
		lb $t1, 0($a0) 		# load the next character into t1
		beqz $t1, exit 		# check for the null character
		addi $t0, $t0, 1 	# increment count
		addi $a0, $a0, 1 	# advance pointer to next char
		j loop			# jump back to loop
		
	exit:
		li $v0, 1	# tell syscall to print int
		move $a0, $t0	# pass int to be printed
		syscall		# kernel mode
	
		li $v0, 10	# tell syscall to exit
		syscall		# kernel mode