.data 
	.word 8 
	.word 12 
	
.text 
	lui x10, 0x10010
	lw x11, 0(x10)
	lw x12, 4(x10)
	
	bgt x11, x12, is_bigger		#x11 > x12
	
	li, x13, 0			#else print x13 = 0
	j print_result 		#jump to print_result 
	
is_bigger:
	li, x13, 1			# if > print x13 = 1
print_result:	
	li x17, 1			#print int
	mv x10, x13 		
	ecall
	
	