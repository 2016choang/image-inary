//Team: Code Busters
//Group Members: Chris Hoang, Jacob Rasmussen, Sach Vaidya, Nicholas Young
//Find location of pixel that is closest in color to the average pixel color
//Update comp_red, comp_green and comp_blue before calling
//Returns location of pixel with min difference in min_x and min_y

compare			call VGAread returnVGA   //call vga_read

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

				//check if any differences are less than 0
checkRed		blt abs_red red_diff zero
checkGreen		blt abs_green green_diff zero
checkBlue		blt abs_blue blue_diff zero

start_add		add tot_diff tot_diff red_diff
				add tot_diff tot_diff green_diff
				add tot_diff tot_diff blue_diff

				//
				blt end_loop min_diff tot_diff
				cp min_diff tot_diff
				cp min_x vgaXread
				cp min_y vgaYread
				be end_loop zero zero

				//multiplying negative values by -1
abs_red			mult red_diff red_diff neg_one
				be checkGreen zero zero
abs_green		mult green_diff green_diff neg_one
				be checkBlue zero zero
abs_blue		mult blue_diff blue_diff neg_one
				be start_add zero zero

				//prepare for next iteration
end_loop		cp red_diff zero
				cp green_diff zero
				cp blue_diff zero
				cp tot_diff zero
				blt incrementX vgaXread width
				blt incrementY vgaYread height
				ret returncomp

incrementX 		add vgaXread vgaXread one
				be compare zero zero

incrementY		cp vgaXread zero
				add vgaYread vgaYread one
				be compare zero zero
 			
 //_____________________________
	
	  ///////////////
	 ///Variables///
	///////////////
//_____________________________

//used for bitshifting 
red_and 		16711680 //0b111111110000000000000000 
green_and		65820 //0b000000001111111100000000
blue_and		255 //000000000000000011111111b 

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
min_diff		0xffffff
min_x			0
min_y			0

//VGA dimensions
width			489
height			346

one				1
zero			0
returnVGA		0
neg_one			-1
sixteen			16
eight			8

#include VGAread.e
