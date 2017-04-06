		cp writeRAM one
//____________________________

loop1	cp addressSD i
		cp addressRAM i
		call sd return
		cp dataRAM dataSD
		call sdram return
		add i i one
		bne loop1 i end
//_____________________________

		cp i zero
		cp writeRAM zero
//_____________________________

loop2	cp addressRAM i
		call sdram return
		cp colorWrite dataRAM
		cp vgaXwrite X
		cp vgaYwrite Y
		cp vgaXtwoWrite X
		cp vgaYtwoWrite Y
		call vgaWrite return
		add i i one
		be stop i end
		add X X one
		bne loop2 X col
		cp X start
		add Y Y one
		be loop2 zero zero
//_____________________________

stop	halt

//_____________________________
	
	  ///////////////
	 ///Variables///
	///////////////
//_____________________________

one		1
zero	0

i		0
return	0

end		6100
X		100
Y		100
col		200
start	100

//______________________________

#include sd_driver.e
#include sdram_driver.e
#include VGAwrite.e

