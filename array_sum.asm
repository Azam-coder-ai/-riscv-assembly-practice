.data 
	.word 4
	.word 3, 7, 2, 8
	
.text 
	lui t0, 0x10010
	lw t1, 0(t0)	#load length in t1 
	addi t0, t0, 4	## Move t0 to point to first array element
	addi t2, x0, 0 	#sum (t2 = 0)
	 
	
loop:	
	lw t3 0(t0)		#load current element into t3
	add t2, t2, t3	#add t3 to sum 
	addi t0, t0, 4	#move to next element 
	addi t1, t1, -1 	#decrease counter -1 
	bne t1, x0, loop	#if counter != 0, repeat  loop
	
	mv a0, t2 
	li a7, 1
	ecall 
	
	
	
