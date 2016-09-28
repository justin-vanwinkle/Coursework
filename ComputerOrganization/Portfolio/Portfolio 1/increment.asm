# Justin VanWinkle -- 09/14/2015
# increment.asm -- A program that increments from 0 to 15

.text
li $t0, 0	#load 0 in t0
li $t1, 16	#load 16 in t1

loop:		#label
la $a0, ($t0)	# stage $t0 to be printed
li $v0, 34	#print hex
syscall
li $a0, 10	#load ascii code for LF
li $v0, 11	#print lower 8 bits of $a0
syscall
addi $t0, $t0, 1	#increment by 1
bne $t0, $t1, loop	#loop if not equal

li $v0, 10	#exit
syscall

# end increment.asm
