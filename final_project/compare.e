//update comp_red, green and blue before calling
//returns location of min difference in min_x and min_y

compare			call write return   //call vga_read
				//colorRead now contains the color from the VGA
				and red_temp red_and colorRead
				and green_temp green_and colorRead
				and blue_temp blue_and colorRead

				//bitshift red and green so there are no trailing 0s
				sr red_temp red_temp sixteen
				sr green_temp green_temp eight

				//might need to do something with absolute value for differences 
				sub red_diff red_temp comp_red
				sub green_diff green_temp comp_green
				sub blue_diff blue_temp comp_blue

				add tot_diff tot_diff red_diff
				add tot_diff tot_diff green_diff
				add tot_diff tot_diff blue_diff

				//
				blt min_diff tot_diff end_loop
				cp min_diff tot_diff
				cp min_x vgaXread
				cp min_y vgaYread

//prepare for next iteration
end_loop		

//used for bitshifting 
red_and 	16711680 //0b111111110000000000000000 
green_and	65820 //0b000000001111111100000000
blue_and	255 //000000000000000011111111b 

//average pixel of other image
comp_red		0
comp_green		0
comp_blue		0

//values from vga
red_temp		0
green_temp		0
blue_temp		0

//difference between the two
red_diff		0
green_diff		0
blue_diff		0
tot_diff		0

//data about the minimum difference
min_diff		0
min_x			0
min_y			0

one				1
zero			0
return 			0

#include VGAread.e