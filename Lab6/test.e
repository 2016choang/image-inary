control_start	call copy dest
	    	halt
copy		cpta x arr step
		cpfa target arr step
		ret dest 
dest	0
x	1000
arr	0
	1
	2
	3
step 	2
target	1001
