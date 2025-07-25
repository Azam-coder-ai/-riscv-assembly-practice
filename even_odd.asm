.data 
	.word 1017		#load int
     even:	.asciz "even"	#label even
     odd:	.asciz "odd"	#label odd 
	
.text 
	lui x10, 0x10010
	lw x11, 0(x10)	#x11 = int(1017)

	andi x12, x11, 1	#checking the int whether even or odd
	beq x12, x0, is_even	#if it is even label it to is_even
	
	la x10, odd		#otherwise -> odd
	j print_result 	

is_even: 
	la x10, even 
	
print_result:
	li x17, 4		#print string
	ecall 		
	
	
	