//Team: Code Busters
//Authors: Chris Hoang, Jacob Rasmussen, Sach Vaidya, Nicholas Young
//Purpose: Transfer picture in SD card to SDRAM

SDCardToRAM	cp writeRAM one
loop1		cp addressSD i
			cp addressRAM i
			call sd return
			cp dataRAM dataSD
			call sdram return
			add i i one
			blt loop1 i end
			cp i zero
			ret returnSDCardToRam

 //_____________________________
	
	  ///////////////
	 ///Variables///
	///////////////
//_____________________________
			
//i		0
end		16950
