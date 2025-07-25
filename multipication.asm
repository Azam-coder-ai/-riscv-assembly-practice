.data
	.word 6			#load int to 0x1001000
	.word 7 		#load int to 0x1001004 
.text 
	lui x10, 0x10010
	lw x11, 0(x10)		#x11 = 6
	lw x12, 4(x10)		#x12 = 7 
	
	mul x13, x11, x12 	#x13 = 6 * 7 = 42 
	
	li x17, 1		#print int 
	mv x10, x13 		#x10 = 42
	ecall