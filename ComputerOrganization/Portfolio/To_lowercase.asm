# Justin VanWinkle 10/05/2015
# To_lowercase.asm-- A program that convert uppercase to lowercase
# Registers used:
# $t0 - used as a pointer to string
# $t2 - used to hold individual chars
# $a0 - used to hold the address of string
# $v0 - syscall parameter and return value

.data
	
	string: .asciiz "HeLlo WoRld" 	# We want to lower this string
	newline: .asciiz "\n"

.text
	
	main:
		la $t0, string 		# Load here the string
	
	toLowerCase:
		lb $t2, 0($t0) 		# We do as always, get the first byte pointed by the address
		beqz $t2, end 		# if is equal to zero, the string is terminated
		blt $t2, 65, continue 	#if character < 'A' jump to continue
		bgt $t2, 90, continue	# if character > 'Z' jump to continue
		j isUpperCase		# above cases failed; this is uppercase; jump to isUpperCase
	
	continue:
		
		addi $t0, $t0, 1 	# Increment the address j toLowerCase
		j toLowerCase	 	# Continue the iteration
	
	isUpperCase:
		addi $t2, $t2, 32 	# add 32, so it goes lower case

		sb $t2, 0($t0) 		# store it in the string
		j continue 		# continue iteration as always

		end:
		li $v0, 4 		# Print the string
		la $a0, string
		syscall
		
		li $v0, 4 		# A nice newline
		la $a0, newline
		syscall

		li $v0, 10		# We have done, exit the program
		syscall