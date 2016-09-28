# Justin VanWinkle -- 09/14/2015
#Project-1-Code-B-Justin-VanWinkle.asm -- a program that computes a specific algebraic expression
#Registers used:
# $t0 is used to hold characters
# $t1 is used to hold characters
# $t2 is used as a counter
# $t3 - $t9 store a count of each letter


.data
string: .asciiz "UCF Knights dropped a 40-13 decision to UConn Saturday at Bright HouseNetworks Stadium. UCF Knights grabbed a 3-0 lead, but the Huskies tookadvantage of turnovers to take a 23-3 lead at halftime."
K: .asciiz "K"
N: .asciiz "N"
I: .asciiz "I"
G: .asciiz "G"
H: .asciiz "H"
T: .asciiz "T"
S: .asciiz "S"
k: .asciiz "k"
n: .asciiz "n"
i: .asciiz "i"
g: .asciiz "g"
h: .asciiz "h"
t: .asciiz "t"
s: .asciiz "s"

dash: .asciiz ": ----------- "
newline: .asciiz "\n"
hash: .asciiz "#"
colon: .asciiz ": "

.text
#initialize $t3 - $t9 to zero
li $t0,0
li $t2,0
li $t3,0
li $t4,0
li $t5,0
li $t6,0
li $t7,0
li $t8,0
li $t9,0
li $s0,195	#number of chars in string

loop:		
lb $t1,string($t2)	#load char into $t1
addi $t2,$t2,1
beq $t2,$s0,eos	#check for eos
j check		#jump to check

check:		#checks for each letter
lb $t0,K	#check upper cases
beq $t0,$t1,incK#if $t2 contains K, jump to incK
lb $t0,N
beq $t0,$t1,incN
lb $t0,I
beq $t0,$t1,incI
lb $t0,G
beq $t0,$t1,incG
lb $t0,H
beq $t0,$t1,incH
lb $t0,T
beq $t0,$t1,incT
lb $t0,S
beq $t0,$t1,incS
lb $t0,k	#check lower cases
beq $t0,$t1,incK#if $t2 contains k, jump to incK
lb $t0,n
beq $t0,$t1,incN
lb $t0,i
beq $t0,$t1,incI
lb $t0,g
beq $t0,$t1,incG
lb $t0,h
beq $t0,$t1,incH
lb $t0,t
beq $t0,$t1,incT
lb $t0,s
beq $t0,$t1,incS

j loop

incK:
addi $t3,$t3,1
j loop

incN:
addi $t4,$t4,1
j loop

incI:
addi $t5,$t5,1
j loop

incG:
addi $t6,$t6,1
j loop

incH:
addi $t7,$t7,1
j loop

incT:
addi $t8,$t8,1
j loop

incS:
addi $t9,$t9,1
j loop

# OUTPUT COUNT
eos:
lb $a0, K	#print K
li $v0, 11
syscall
la $a0, dash	#print dash
li $v0, 4
syscall
move $a0, $t3	#print num Ks	
li $v0, 1
syscall

la $a0,newline	#print newline
li $v0,4
syscall
lb $a0, N	#print N
li $v0, 11
syscall
la $a0, dash	#print dash
li $v0, 4
syscall
move $a0, $t4	#print num Ns	
li $v0, 1
syscall

la $a0,newline	#print newline
li $v0,4
syscall
lb $a0, I	#print I
li $v0, 11
syscall
la $a0, dash	#print dash
li $v0, 4
syscall
move $a0, $t5	#print num Is	
li $v0, 1
syscall

la $a0,newline	#print newline
li $v0,4
syscall
lb $a0, G	#print G
li $v0, 11
syscall
la $a0, dash	#print dash
li $v0, 4
syscall
move $a0, $t6	#print num Gs	
li $v0, 1
syscall

la $a0,newline	#print newline
li $v0,4
syscall
lb $a0, H	#print H
li $v0, 11
syscall
la $a0, dash	#print dash
li $v0, 4
syscall
move $a0, $t7	#print num Hs	
li $v0, 1
syscall

la $a0,newline	#print newline
li $v0,4
syscall
lb $a0, T	#print T
li $v0, 11
syscall
la $a0, dash	#print dash
li $v0, 4
syscall
move $a0, $t8	#print num Ts	
li $v0, 1
syscall

la $a0,newline	#print newline
li $v0,4
syscall
lb $a0, S	#print S
li $v0, 11
syscall
la $a0, dash	#print dash
li $v0, 4
syscall
move $a0, $t9	#print num Ss	
li $v0, 1
syscall

la $a0,newline	#print newline
li $v0,4
syscall
syscall

#HISTOGRAM
lb $a0, K	#print K
li $v0, 11
syscall
la $a0, colon	#print colon
li $v0, 4
syscall
###################################
move $t2,$zero	#reset #t2 to 0
kloop:
beq $t3,$t2,njump
addi $t2,$t2,1	#increment $t2
la $a0, hash
li $v0,4
syscall
j kloop
###################################

njump:
la $a0,newline	#print newline
li $v0,4
syscall
lb $a0, N	#print N
li $v0, 11
syscall
la $a0, colon	#print colon
li $v0, 4
syscall
###################################
move $t2,$zero	#reset #t2 to 0
nloop:
beq $t4,$t2,ijump
addi $t2,$t2,1	#increment $t2
la $a0, hash
li $v0,4
syscall
j nloop
###################################

ijump:
la $a0,newline	#print newline
li $v0,4
syscall
lb $a0, I	#print I
li $v0, 11
syscall
la $a0, colon	#print colon
li $v0, 4
syscall
###################################
move $t2,$zero	#reset #t2 to 0
iloop:
beq $t5,$t2,gjump
addi $t2,$t2,1	#increment $t2
la $a0, hash
li $v0,4
syscall
j iloop
###################################

gjump:
la $a0,newline	#print newline
li $v0,4
syscall
lb $a0, G	#print G
li $v0, 11
syscall
la $a0, colon	#print colon
li $v0, 4
syscall
###################################
move $t2,$zero	#reset #t2 to 0
gloop:
beq $t6,$t2,hjump
addi $t2,$t2,1	#increment $t2
la $a0, hash
li $v0,4
syscall
j gloop
###################################

hjump:
la $a0,newline	#print newline
li $v0,4
syscall
lb $a0, H	#print H
li $v0, 11
syscall
la $a0, colon	#print colon
li $v0, 4
syscall
###################################
move $t2,$zero	#reset #t2 to 0
hloop:
beq $t7,$t2,tjump
addi $t2,$t2,1	#increment $t2
la $a0, hash
li $v0,4
syscall
j hloop
###################################

tjump:
la $a0,newline	#print newline
li $v0,4
syscall
lb $a0, T	#print T
li $v0, 11
syscall
la $a0, colon	#print colon
li $v0, 4
syscall
###################################
move $t2,$zero	#reset #t2 to 0
tloop:
beq $t8,$t2,sjump
addi $t2,$t2,1	#increment $t2
la $a0, hash
li $v0,4
syscall
j tloop
###################################

sjump:
la $a0,newline	#print newline
li $v0,4
syscall
lb $a0, S	#print S
li $v0, 11
syscall
la $a0, colon	#print colon
li $v0, 4
syscall
###################################
move $t2,$zero	#reset #t2 to 0
sloop:
beq $t9,$t2,exit
addi $t2,$t2,1	#increment $t2
la $a0, hash
li $v0,4
syscall
j sloop
###################################

exit:
#wrap up
li $v0, 10
syscall
#end file
