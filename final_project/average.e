//update start and end address before calling 
//ave_pixel updated to the average pixel value at the end 
average 	cp write zero
		cp address start_address
		cp current_address start_address

loop		call sdram return
		//logical and to get rgb values
		and red_temp red_and data
		and green_temp green_and data
		and blue_temp blue_and data

//bitshift red and green so there are no trailing 0s
		sr red_temp red_temp sixteen
		sr green_temp green_temp eight
//update totals
		add red_tot red_tot red_temp
		add green_tot green_tot green_temp
		add blue_tot blue_tot blue_temp
		add count count one
		add current_address current_address one
		cp address current_address 

//loops back to beginning while not equal to size
		bne loop current_address end_address 
		
//totals are now the averages
		div red_tot red_tot count
		div green_tot green_tot count
		div blue_tot blue_tot count
//shifts bits back to original positions
		sl red_tot red_tot sixteen
		sl green_tot green_tot eight

		add ave_pixel ave_pixel red_tot
		add ave_pixel ave_pixel green_tot
		add ave_pixel ave_pixel blue_tot

red_and 	16711680 //0b111111110000000000000000 
green_and	65820 //0b000000001111111100000000
blue_and	255 //000000000000000011111111b 
return 		0
blue_temp	0
green_temp	0
red_temp	0
blue_tot	0
green_tot	0
red_tot		0
count		0
sixteen 	16
eight 		8
start_address	0
end_address	0
current_address 0
ave_pixel	0
#include sdram_driver.e
