.data 
	.word 50		 #load int to 0x1001000
	.word 23 		 #load int to 0x1001004
.text 
	lui x10, 0x10010	
	lw x11, 0(x10)	#x11 = 50
	lw x12, 4(x10)	#x12 = 23 
	
	sub x13, x11, x12	#x13 = 50 - 23 = 27
	
	li x17, 1		#print int 
	mv x10, x13 	#x10 = 27
	ecall 