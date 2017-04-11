//Team: Code Busters
//Group Members: Chris Hoang, Jacob Rasmussen, Sach Vaidya, Nicholas Young
//Displays picture in SDRAM on VGA screen

RAMtoScreen	cp writeRAM zero
loop2		cp addressRAM i
			call sdram return2
			cp colorWrite dataRAM
			cp vgaXwrite X
			cp vgaYwrite Y
			cp vgaXtwoWrite X
			cp vgaYtwoWrite Y
			call vgaWrite returnVGAwrite
			add i i one
			be stop i end
			add X X one
			bne loop2 X col
			cp X start
			add Y Y one
			be loop2 zero zero
stop		cp i zero
			ret returnRAMtoScreen

//_____________________________
	
	  ///////////////
	 ///Variables///
	///////////////
//_____________________________

i			0
//end		6100
X			100
Y			100
col			250
start		100
