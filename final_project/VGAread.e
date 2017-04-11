//Team: Code Busters
//Group Members: Chris Hoang, Jacob Rasmussen, Sach Vaidya, Nicholas Young
//Driver to read pixels from VGA display

VGAread			cp 0x80000062 numZeroRead
				cp 0x80000063 vgaXread
				cp 0x80000064 vgaYread

//____________________________

				cp 0x80000060 numOneRead
respondRead		cp responseRead 0x80000061
				bne respondRead responseRead numOneRead
			
				cp colorRead 0x80000068

//____________________________
		
				cp 0x80000060 numZeroRead
respond2		cp responseRead 0x80000061
				bne respond2 responseRead numZeroRead
				ret returnVGA

//_____________________________
	
	  ///////////////
	 ///Variables///
	///////////////
//_____________________________

numOneRead		1
numZeroRead		0
responseRead	0
vgaXread		0
vgaYread		0
vgaXtworead		0
vgaYtworead		0
colorRead		0
