
start			cpfa value array_start index
loop			call serial_send serial_send_ra	
inc			add index index one
			blt start index size
			halt
				

array_start		'a'
			'b'
			'c'
			'd'

index			 0
size			 4

value 			 0
one			 1

#include serial_send.e
