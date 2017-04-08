//test compare

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
Right		cp colorWrite green
			cp vgaXwrite num320
			cp vgaYwrite num240
			cp vgaXtwoWrite num639
			cp vgaYtwoWrite num479
			call vgaWrite return
Bottom		cp colorWrite red
			cp vgaXwrite numZeroTest
			cp vgaYwrite num240
			cp vgaXtwoWrite num319
			cp vgaYtwoWrite num479
			call vgaWrite return
Top			cp colorWrite maize
			cp vgaXwrite num320
			cp vgaYwrite numZeroTest
			cp vgaXtwoWrite num639
			cp vgaYtwoWrite num239
			call vgaWrite return
			
			cp vgaYread num240
			call VGAread returnVGA
			cp colorWrite colorRead
			cp vgaXwrite num320
			cp vgaYwrite num240
			cp vgaXtwoWrite num330
			cp vgaYtwoWrite num250
			call vgaWrite return
			
			cp vgaXread numZeroTest
			cp vgaYread numZeroTest
			
			cp comp_red numZeroTest
			cp comp_green numZeroTest
			cp comp_blue blue
			
			cp time1 0x80000005
wait		sub diff 0x80000005 time1
			blt wait diff thresh
			
			call compare return2
			
			cp colorWrite black
			cp vgaXwrite min_x
			cp vgaYwrite min_y
			add x2 min_x numTen
			add y2 min_y numTen
			cp vgaXtwoWrite x2
			cp vgaYtwoWrite y2
			call vgaWrite return
			
			halt

black 		0
blue		255
maize		16776960
green		65280
red			16711680
num639 		639
num479 		479
num319 		319
num239 		239
num320 		320
num240 		240
numTen		10
numZeroTest 0
num330		330
num250		250
return2		0
x2			0
y2			0
return		0
thresh		56000
diff		0
time1		0

#include VGAwrite.e
#include compare.e
