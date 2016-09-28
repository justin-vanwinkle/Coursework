# Justin VanWinkle -- 09/14/2015
#Project-1-Code-B-Justin-VanWinkle.asm -- a program that computes a specific algebraic expression
#Registers used: t0-t9, with some being reused.

.data
prompt: .asciiz "\nEnter an integer: "
resultten: .asciiz "\nS_ten = "
resulttwo: .asciiz "\nS_two = "
divby: .asciiz "\nS is divisible by "
remain: .asciiz "\nRemainder of division by "
is: .asciiz " is "
ex: .asciiz "!"

.text
li $t6, 18	# store val
li $t7, 9	#store val

#integer 1
li $v0, 4	#print string
la $a0, prompt	#load a0 with string
syscall
li $v0, 5	#read integer
syscall
move $t0, $v0	#move read integer to $t0

#integer 2
li $v0, 4	#print string
la $a0, prompt	#load a0 with string
syscall
li $v0, 5	#read integer
syscall
move $t1, $v0	#move read integer to $t0

#integer 2
li $v0, 4	#print string
la $a0, prompt	#load a0 with string
syscall
li $v0, 5	#read integer
syscall
move $t2, $v0	#move read integer to $t0

#integer 3
li $v0, 4	#print string
la $a0, prompt	#load a0 with string
syscall
li $v0, 5	#read integer
syscall
move $t3, $v0	#move read integer to $t0

#integer 4
li $v0, 4	#print string
la $a0, prompt	#load a0 with string
syscall
li $v0, 5	#read integer
syscall
move $t4, $v0	#move read integer to $t0

#integer 5
li $v0, 4	#print string
la $a0, prompt	#load a0 with string
syscall
li $v0, 5	#read integer
syscall
move $t5, $v0	#move read integer to $t0

li $t8, 0
# A X B
AxB:
li $t9, 0
beqz, $t1, Cx18		#check for zero
beqz, $t0, Cx18		#check for zero
subi $t1, $t1, 1	# decrement
add $t8, $t8, $t0	#t8 = t8 + A
bnez $t1, AxB		#check for zero

#18 X C
Cx18:
li $t1, 0		#set zero
beqz, $t2, Dx9		#check for zero
beqz, $t6, Dx9		#check for zero
subi $t2, $t2, 1	#decrement
add $t9, $t9, $t6	#t9 = t9 + 18
bnez $t2, Cx18		#check for zero

#Dx9
Dx9:
li $t2, 0	
beqz, $t3, ExF	#check for zero
beqz, $t7, ExF  #check for zero
subi $t3, $t3, 1 #decrement
add $t1, $t1, $t7	#t1 = t1 + 9
bnez $t3, Dx9	#check for zero

#ExF
ExF:
beqz, $t5, continue #check for zero
beqz, $t4, continue #check for zero
subi $t5, $t5, 1 #decrement
add $t2, $t2, $t4	#t2 = t2 + t4
bnez $t5, ExF	#check for zero

continue:
add $t0, $t8, $t9	#add and store in t0
sub $t0, $t0, $t1	# add and store in t0
sub $t0, $t0, $t2	# add and store in t0

la $a0, resultten	# load string
li $v0, 4		#print string
syscall			#kernel mode

# print S
la $a0, ($t0)		#load int
li $v0, 1		#print int
syscall			#kernel mode

la $a0, resulttwo	#load stirng
li $v0, 4		#print string
syscall			#kernel mode

la $a0, ($t0)		#load int
li $v0, 35		#print int in binary
syscall			#kernel mode



# Part B ###########################################################################################################

# copy S for each division
la $t1, ($t0)
la $t2, ($t0)
la $t3, ($t0)
la $t4, ($t0)

#perform division by 2
divBy2:
beq $t1, 1, r2 #if remainder, go to remainder
subi $t1, $t1, 2 # take away 2
bnez, $t1, divBy2 # if zero, divisible by 2, go to two
beqz, $t1, two

r2:	# if remainder of 2, do this
la $a0, remain	# output string
li $v0, 4
syscall
li $a0, 2	# output number 2
li $v0, 1
syscall
la $a0, is	# output string
li $v0, 4
syscall
la $a0, ($t1)	# output remainder
li $v0, 1
syscall
beqz $zero, divBy3

two:	# if divisible by 2, do this
la $a0, divby
li $v0, 4
syscall
li $a0, 2
li $v0, 1
syscall
la $a0, ex	#output string
li $v0, 4
syscall

#perform division by 3
divBy3:
beq $t2, 1, r3 #if remainder, go to remainder
beq $t2, 2, r3
subi $t2, $t2, 3 # take away 3
bnez, $t2, divBy3 # if zero, divisible by 3, go to three
beqz, $t2, three

r3:	# if not divisible by 3, do this
la $a0, remain	# output string
li $v0, 4
syscall
li $a0, 3	# output number 3
li $v0, 1
syscall
la $a0, is	# output string
li $v0, 4
syscall
la $a0, ($t2)	# output remainder
li $v0, 1
syscall
beqz $zero, divBy5

three:		#if divisible by 3, do this
la $a0, divby	#output string
li $v0, 4
syscall
li $a0, 3	#output 3
li $v0, 1
syscall
la $a0, ex	#output string
li $v0, 4
syscall

#perform division by 5
divBy5:
#perform division by 5 on $t1
beq $t3, 1, r5 #if remainder, go to remainder
beq $t3, 2, r5
beq $t3, 3, r5
beq $t3, 4, r5
subi $t3, $t3, 5 # take away 5
bnez, $t3, divBy5 
beqz, $t3, five	# if zero, divisible by 5, go to five

r5:	#if not divisible by 5, do this
la $a0, remain	# output string
li $v0, 4
syscall
li $a0, 5	# output number 5
li $v0, 1
syscall
la $a0, is	# output string
li $v0, 4
syscall
la $a0, ($t3)	# output remainder
li $v0, 1
syscall
beqz $zero, divBy7

five:	#if divisible by 5, do this
la $a0, divby	#output string
li $v0, 4
syscall
li $a0, 5	#output 5
li $v0, 1
syscall
la $a0, ex	#output string
li $v0, 4
syscall

divBy7:
#perform division by 7 
beq $t4, 1, r7 #if remainder, go to remainder
beq $t4, 2, r7
beq $t4, 3, r7
beq $t4, 4, r7
beq $t4, 5, r7
beq $t4, 6, r7
beqz, $t4, seven
subi $t4, $t4, 7 # take away 7
bnez, $t4, divBy7 # if zero, divisible by 7, go to three


r7:	#if not divisible by 7, do this
la $a0, remain	# output string
li $v0, 4
syscall
li $a0, 7	# output number 7
li $v0, 1
syscall
la $a0, is	# output string
li $v0, 4
syscall
la $a0, ($t4)	# output remainder
li $v0, 1
syscall
beqz $zero, wrapup

seven:		#if divisible by seven, do this
la $a0, divby	#output string
li $v0, 4
syscall
li $a0, 7	#output 7
li $v0, 1
syscall
la $a0, ex	#output string
li $v0, 4
syscall

wrapup:		# load exit and hit kernel mode
li $v0, 10
syscall
#end file
