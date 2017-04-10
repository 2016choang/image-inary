//0x80000080	write 	bit 0: sd_command 	
//0x80000081	read 	bit 0: sd_response
//0x80000082	write 	bits 0: sd_write
//0x80000083	write 	bits 29-0: sd_address[29:0]
//0x80000084	write 	bits 31-0: sd_data_write
//0x80000085	read 	bits 31-0: sd_data_read

sd		cp 0x80000083 addressSD // address
		cp 0x80000082 zero    // write
		cp 0x80000080 one // command

wait_oneSD	cp sd_response 0x80000081
		bne wait_oneSD sd_response one
	
readSD		cp dataSD 0x80000085
		
		cp 0x80000080 zero

wait_twoSD	cp sd_response 0x80000081
		bne wait_twoSD sd_response zero
					
		ret returnSD

//one			1
//zero			0
sd_response		0
dataSD			0
addressSD		0
