# Justin VanWinkle -- 09/14/2015
# add2.asm -- A program that adds two user-given integers and 
#   leaves the result in register $t0
# Registers used:
# t2 - holds result
# t0 & t1 hold user input values

.data
prompt: .asciiz "\nPlease enter an integer: "
result: .asciiz "\nThe sum of your two integers is: "

.text
li $v0, 4	#print string
la $a0, prompt	#load a0 with string
syscall
li $v0, 5	#read integer
syscall
move $t0, $v0 	#move integer read to t1


li $v0, 4	#print string
la $a0, prompt	#load a0 with string
syscall
li $v0, 5	#read integer
syscall
move $t1, $v0 	#move integer read to t1

add $t2, $t0, $t1 #add the two integers and store result in t0

la $a0, result  #display result string
li $v0, 4	# print string
syscall
li $v0, 34	#display result value
move $a0, $t2	#prep result for print
syscall

li $v0, 10	#load for exit
syscall		
# end of add2.asm