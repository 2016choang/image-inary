//Team: Code Busters
//Authors: Chris Hoang, Jacob Rasmussen, Sach Vaidya, Nicholas Young
//Purpose: Find location of pixel that is closest in color to the average pixel color


//Update comp_red, comp_green and comp_blue before calling
//Returns location of pixel with min difference in min_x and min_y

				//Call VGAread driver
compare			cp startX chunkX
				cp startY chunkY
							
				call average_chunk returnavg_chunk

				//ave_pixel_chunk now contains the color of the current pixel
				and red_temp red_and ave_pixel_chunk
				and green_temp green_and ave_pixel_chunk
				and blue_temp blue_and ave_pixel_chunk
				
				cp vgaXwrite chunkX
				cp vgaYwrite chunkY
				add vgaXtwoWrite chunkX num10
				add vgaYtwoWrite chunkY num10
				cp colorWrite ave_pixel_chunk
				call vgaWrite returnVGAwrite			

//_____________________________			
				
				//Bitshift red and green so there are no trailing 0s
				sr red_temp red_temp sixteen
				sr green_temp green_temp eight

				//Calculate differences in pixel values 
				sub red_diff red_temp comp_red
				sub green_diff green_temp comp_green
				sub blue_diff blue_temp comp_blue

//_____________________________

				//Check if any differences are less than 0
checkRed		blt abs_red red_diff zero
checkGreen		blt abs_green green_diff zero
checkBlue		blt abs_blue blue_diff zero

//_____________________________

start_add		add tot_diff tot_diff red_diff
				add tot_diff tot_diff green_diff
				add tot_diff tot_diff blue_diff
				

				//Update min_diff accordingly
				blt end_loop min_diff tot_diff
				cp min_diff tot_diff
				cp min_x chunkX
				cp min_y chunkY
				be end_loop zero zero

//_____________________________

				//Calculate absolute value of differences
abs_red			mult red_diff red_diff neg_one
				be checkGreen zero zero
abs_green		mult green_diff green_diff neg_one
				be checkBlue zero zero
abs_blue		mult blue_diff blue_diff neg_one
				be start_add zero zero

//_____________________________

				//Prepare for next iteration of compare
end_loop		cp red_diff zero
				cp green_diff zero
				cp blue_diff zero
				cp tot_diff zero
				cp red_temp zero
				cp green_temp zero
				cp blue_temp zero
				blt incrementX chunkX width
				blt incrementY chunkY height
				ret returncomp

//_____________________________

incrementX 		add chunkX chunkX num160
				be compare zero zero
				
incrementY		cp chunkX zero
				add chunkY chunkY num120
				be compare zero zero
 			
//_____________________________
	
	  ///////////////
	 ///Variables///
	///////////////
//_____________________________

//used for bitshifting 
red_and 		16711680 //0b111111110000000000000000 
green_and		65280 //0b000000001111111100000000
blue_and		255 //000000000000000011111111b 
num160			160
num120			120

//average pixel of other image
comp_red		0
comp_green		0
comp_blue		0

//values from average_chunk
red_temp		0
green_temp		0
blue_temp		0

//difference between the two
red_diff		0
green_diff		0
blue_diff		0
tot_diff		0

//data about the minimum difference
min_diff		9999999
min_x			0
min_y			0

chunkX			0
chunkY			0
width			480
height			360

countone		1
one				1
zero			0
neg_one			-1
sixteen			16
eight			8
num10			10

