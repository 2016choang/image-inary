//Team: Code Busters
//Group Members: Chris Hoang, Jacob Rasmussen, Sach Vaidya, Nicholas Young
//Find average pixel color of "chunk" of larger picture
//Update startX and startY and endX and endY before calling
//ave_pixel updated to the average pixel value at the end 


average_chunk 	cp currentX startX
				cp currentY startY
				add endX startX num80
				add endY startY num60
				cp ave_pixel_chunk zero
				cp red_ave_chunk zero
				cp blue_ave_chunk zero
				cp green_ave_chunk zero
				cp red_tot zero
				cp blue_tot zero
				cp green_tot zero
				cp red_temp zero
				cp blue_temp zero
				cp green_temp zero
				cp count zero
//____________________________

looper_chunk	cp vgaXread currentX
				cp vgaYread currentY

				call VGAread returnVGA
			
				//Logical and to get rgb values
				and red_temp red_and colorRead
				and green_temp green_and colorRead
				and blue_temp blue_and colorRead
			
				//Bitshift red and green so there are no trailing 0s
				sr red_temp red_temp sixteen
				sr green_temp green_temp eight

//____________________________

				//Update totals of color values
break_chunk		add red_tot red_tot red_temp
				add green_tot green_tot green_temp
				add blue_tot blue_tot blue_temp
				add count count one

//____________________________

inc_chunk		blt incX currentX endX
				blt incY currentY endY
			
			
				//Calculate the averages by dividing totals by count of pixels
				div red_ave_chunk red_tot count
				div green_ave_chunk green_tot count
				div blue_ave_chunk blue_tot count

			
				//Shifts bits back to original positions
				sl red_ave_chunk red_ave_chunk sixteen
				sl green_ave_chunk green_ave_chunk eight

				add ave_pixel_chunk ave_pixel_chunk red_ave_chunk
				add ave_pixel_chunk ave_pixel_chunk green_ave_chunk 
				add ave_pixel_chunk ave_pixel_chunk blue_ave_chunk 
		
				ret returnavg_chunk

incX			add currentX currentX one
				be looper_chunk one one
			
incY			add currentY currentY one
				cp currentX startX
				be looper_chunk one one

//_____________________________
	
	  ///////////////
	 ///Variables///
	///////////////
//_____________________________

//red_and 		16711680 //0b111111110000000000000000 
//green_and		65280 //0b000000001111111100000000
//blue_and		255 //000000000000000011111111b 
//blue_temp		0
//green_temp	0
//red_temp		0

//blue_tot		0
//green_tot		0
//red_tot		0
//count			0
startX			0
startY			0
endX			0
endY			0
currentX		0
currentY		0
//sixteen 		16
//eight 		8
ave_pixel_chunk	0
red_ave_chunk	0
blue_ave_chunk	0
green_ave_chunk	0

//zero			0
//two			2
//three			3
//four 			4
//upper			225
//lower			30
