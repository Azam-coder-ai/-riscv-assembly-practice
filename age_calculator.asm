.data
prompt: 	.asciz "Please enter your age\n"
curr_year: 	.word 2025

.text 	
	la a0, prompt # a0 = prompt
	li a7, 4 # 4 = print string 
	
	ecall
	
	li a7, 5 # read integer 
	ecall 	
	mv t0, a0
	
	la t1, curr_year 
	lw t1, 0(t1)
	sub t2, t1, t0  #curr_year - age
	
	mv a0, t2 
	li a7, 1	#print integer
	ecall
	