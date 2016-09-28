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
li $t6, 18
li $t7, 9

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
beqz, $t1, Cx18
beqz, $t0, Cx18
subi $t1, $t1, 1
add $t8, $t8, $t0	#t8 = t8 + A
bnez $t1, AxB

#18 X C
Cx18:
li $t1, 0
beqz, $t2, Dx9
beqz, $t6, Dx9
subi $t2, $t2, 1
add $t9, $t9, $t6	#t9 = t9 + 18
bnez $t2, Cx18

#Dx9
Dx9:
li $t2, 0
beqz, $t3, ExF
beqz, $t7, ExF
subi $t3, $t3, 1
add $t1, $t1, $t7	#t1 = t1 + 9
bnez $t3, Dx9

#ExF
ExF:
beqz, $t5, continue
beqz, $t4, continue
subi $t5, $t5, 1
add $t2, $t2, $t4	#t2 = t2 + t4
bnez $t5, ExF

continue:
add $t0, $t8, $t9
sub $t0, $t0, $t1
sub $t0, $t0, $t2

la $a0, resultten
li $v0, 4
syscall

# print S
la $a0, ($t0)
li $v0, 1
syscall

la $a0, resulttwo
li $v0, 4
syscall

la $a0, ($t0)
li $v0, 35
syscall

#wrap up
li $v0, 10
syscall
#end file
