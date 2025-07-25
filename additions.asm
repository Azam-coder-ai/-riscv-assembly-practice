.data 
	.word 10
	.word 20 
	.word 30 
.text 
	lui x10 0x10010
	lw x11 0(x10) 		#x11 = 10
	lw x12 4(x10) 		#x12 = 20
	lw x13 8(x10) 		#x13 = 30
	
	add x14, x11, x12	#x14 = 10 + 20 = 30
	add x14, x14, x13	#x14 = 30 + 30 = 60
	
	li x17, 1		#print int
	mv x10, x14		#x10 = 60
	ecall
	
	
	