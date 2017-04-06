start		cp colorWrite black
			cp vgaXwrite numZeroTest
			cp vgaYwrite numZeroTest
			cp vgaXtwoWrite num639
			cp vgaYtwoWrite num479
			call vgaWrite return
Left		cp colorWrite blue
			cp vgaXwrite numZeroTest
			cp vgaYwrite numZeroTest
			cp vgaXtwoWrite num319
			cp vgaYtwoWrite num239
			call vgaWrite return
Right		cp colorWrite maize
			cp vgaXwrite num320
			cp vgaYwrite num240
			cp vgaXtwoWrite num639
			cp vgaYtwoWrite num479
			call vgaWrite return
			halt

black 		0
blue		255
maize		16776960
num639 		639
num479 		479
num319 		319
num239 		239
num320 		320
num240 		240
return		0
numZeroTest 0

#include VGAwrite.e
#include VGAread.e
