//Team: Code Busters
//Authors: Chris Hoang, Jacob Rasmussen, Sach Vaidya, Nicholas Young
//Purpose: Tests the average function

test		cp end_address endave
			//call SDCardToRAM return
			call average return
			//cp 0x80000001 one
			cp vgaXwrite one
			cp vgaYwrite one
			cp vgaXtwoWrite end_img
			cp vgaYtwoWrite end_img
			cp colorWrite ave_pixel
			call vgaWrite return
			cp ave_pixel zero
			cp red_tot	zero
			cp green_tot zero
			cp blue_tot zero
			
			halt

//_____________________________
	
	  ///////////////
	 ///Variables///
	///////////////
//_____________________________

endave 	6100
one		1

end_img	479
return 	4

#include average.e
#include VGAwrite.e
#include SDCardToRam.e
#include sdram_driver.e
