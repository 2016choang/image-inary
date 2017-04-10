//Team: Code Busters
//Group Members: Chris Hoang, Jacob Rasmussen, Sach Vaidya, Nicholas Young
//Driver to write pixels to VGA display

vgaWrite		cp 0x80000062 numOneWrite
				cp 0x80000063 vgaXwrite
				cp 0x80000064 vgaYwrite
				cp 0x80000065 vgaXtwoWrite
				cp 0x80000066 vgaYtwoWrite
				cp 0x80000067 colorWrite

				cp 0x80000060 numOneWrite
respondWrite	cp responseWrite 0x80000061
				bne respondWrite responseWrite numOneWrite
				cp 0x80000060 numZeroWrite
				ret returnVGAwrite

//_____________________________
	
	  ///////////////
	 ///Variables///
	///////////////
//_____________________________

numOneWrite		1
numZeroWrite	0
responseWrite	0
vgaXwrite		0
vgaYwrite		0
vgaXtwoWrite	0
vgaYtwoWrite	0
colorWrite		0
