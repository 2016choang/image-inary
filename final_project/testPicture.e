testPicture cpfa colorWrite array i
			cp vgaXwrite startX
			cp vgaYwrite startY
			cp vgaXtwoWrite startX
			cp vgaYtwoWrite startY
			call vgaWrite return
			add i i one
			be stop i countEnd
			add startX startX one
			bne testPicture startX col
			cp startX num100
			add startY startY one
			be testPicture zero zero
stop 		halt 
			

startX 100
startY 100
i 0
col 133
return 0
one 1
countEnd 660
zero 0 
num100 100
array 0xf8f8f8
	0xf8f8f8
	0xf8f8f0
	0xf8f8f0
	0xf8f8f8
	0xf8f8f8
	0xf8f8f8
	0xf0f8f8
	0xf8f8f8
	0xf8f8f8
	0xe8f0f8
	0xf8f8f8
	0xf8f8f8
	0xf0f0e8
	0xf8f8f8
	0xf0f8f0
	0xf0f8f0
	0xf0f8e8
	0xe8d8c8
	0x705848
	0x887068
	0x706050
	0xd8d8d0
	0xf8f8f8
	0xf8f8f0
	0xf8f8f0
	0xf8f8f0
	0xf8f8f0
	0xf8f8f0
	0xf8f8f8
	0xf8f8f8
	0xf8f8f8
	0xf8f8f8
	0xf8f8f8
	0xf8f8f8
	0xf8f8f8
	0xf8f8f8
	0xf8f8f8
	0xf8f8f8
	0xf8f8f8
	0xf8f8f8
	0xf0f0f0
	0xf8f8f8
	0xf8f8f8
	0xf8f8f8
	0xf8f8f8
	0xf8f8f8
	0xf0e8e8
	0xf8f8f8
	0xf8f8f8
	0xf8f8f0
	0x887058
	0x988060
	0x806048
	0x483020
	0x706858
	0xa0a090
	0xf8f8f0
	0xf8f8f0
	0xf0f0e8
	0xf8f8f0
	0xf8f8f8
	0xf8f8f8
	0xf8f8f8
	0xf8f8f8
	0xf8f8f8
	0xf8f8f8
	0xf8f8f8
	0xf8f8f8
	0xf8f8f8
	0xf8f8f8
	0xf8f8f8
	0xf8f8f0
	0xf8f8f0
	0xf8f8f8
	0xf8f0f8
	0xf8f8f8
	0xf0f0f8
	0xe0e0d8
	0xf0e8d8
	0xf8f8f0
	0xf8f0f0
	0xf8f0f8
	0xd8c8c0
	0x785830
	0xb08050
	0x986840
	0xa07858
	0xb89888
	0x604840
	0xb0a098
	0xf8f8f8
	0xf8f8f8
	0xf8f8f8
	0xf0f8f8
	0xf8f8f8
	0xf0f8f0
	0xf0f8f0
	0xf8f8f8
	0xf8f8f8
	0xf8f8f8
	0xf8f8f8
	0xf8f8f8
	0xf8f8f8
	0xf8f8f8
	0xf8f8f0
	0xf8f8f0
	0xf8f0f0
	0xf8f8f8
	0xf8f8f8
	0xf0f0f0
	0xe8e8e0
	0x888078
	0xb0a0a0
	0xf8f0f0
	0xf8e0e0
	0x886048
	0xa07030
	0x985810
	0xb88038
	0xd8a068
	0x805838
	0x503018
	0x806860
	0x908878
	0xf8f8f0
	0xf8f8f8
	0xf8f8f8
	0xf0f8f0
	0xf8f8f0
	0xf8f8f8
	0xf8f8f8
	0xf0f8f8
	0xf0f8f8
	0xf8f8f8
	0xf8f8f8
	0xf8f8f8
	0xf8f8f8
	0xf8f8f8
	0xf8f8f8
	0xf8f8f8
	0xf0f8f0
	0xf0f0f0
	0xf8f8f8
	0xb0b0a0
	0x707060
	0x787870
	0xa09088
	0x684820
	0xc08848
	0xe09830
	0xe8a028
	0xb87008
	0x905000
	0xa87840
	0xb08860
	0xa89878
	0x484028
	0x787860
	0xf0f8e8
	0xf0f8e8
	0xf8f8f8
	0xf8f8f8
	0xf8f8f8
	0xf8f8f8
	0xf0f8f8
	0xf0f8f8
	0xf0f8f8
	0xf8f8f8
	0xf8f8f8
	0xf8f8f8
	0xf8f8f8
	0xf8f8f8
	0xf8f8f0
	0xf8f8f8
	0xf8f8f0
	0xf8f8f0
	0xb0b8a8
	0x686858
	0xe0e0d8
	0xf8f8e8
	0x987040
	0xb87828
	0xe09820
	0xe09010
	0xe09018
	0xd08820
	0xb07828
	0xb08848
	0x583800
	0x685030
	0x706850
	0x989888
	0xf8f8e8
	0xf8f8f0
	0xf8f8f8
	0xf8f0f8
	0xf8f8f8
	0xf8f8f8
	0xf8f8f8
	0xf8f8f8
	0xf8f8f8
	0xf8f8f8
	0xf8f8f8
	0xf8f8f8
	0xf8f8f8
	0xf8f8f8
	0xf8f8f8
	0xf8f8f8
	0xe0e0d8
	0xc8c8c0
	0xf8f8e8
	0xf0e8d8
	0xf8f8d8
	0xf0c8a0
	0x986020
	0xd89830
	0xe09018
	0xe09018
	0xd89018
	0xe0a030
	0x905800
	0x885010
	0xc09870
	0xa08068
	0x584838
	0xb8b8a0
	0xf8f8f0
	0xf8f0f8
	0xf8f8f8
	0xf8f8f8
	0xf8f8f8
	0xf8f8f8
	0xf8f8f8
	0xf8f8f8
	0xf8f8f8
	0xf8f8f8
	0xf8f8f8
	0xf8f8f8
	0xf8f8f8
	0xf8f8f8
	0xf8f8f8
	0xa89898
	0xd8d0c8
	0xf0e8d8
	0xf0f0d0
	0xf8f8d8
	0xe8c090
	0x986018
	0xe09838
	0xd89018
	0xd89010
	0xe09010
	0xe09818
	0xd89020
	0xb06818
	0xa87030
	0x704020
	0x785840
	0x706048
	0x787060
	0xf8f0f8
	0xf8f8f8
	0xf8f8f8
	0xf8f8f8
	0xf8f8f8
	0xf8f8f0
	0xf8f8f8
	0xf0f8f8
	0xf0f8f8
	0xf0f8f8
	0xf0f8f8
	0xf8f8f8
	0xf8f8e8
	0xb0a090
	0x685848
	0xf8f0e8
	0xf8f8e8
	0xf8f8e0
	0xf0e0b0
	0x785008
	0xc08020
	0xe09828
	0xe09010
	0xe09008
	0xe09008
	0xe09008
	0xe09010
	0xf09830
	0xa05008
	0xa06028
	0xc09870
	0xb8a880
	0x807858
	0xd0c8c0
	0xf8f8f8
	0xf8f8f8
	0xf8f0f0
	0xf8f8f8
	0xf8f8f0
	0xf8f8f8
	0xf8f8f8
	0xf0f8f8
	0xf8f8f8
	0xf8f8f8
	0xe8d8c0
	0x988058
	0xb09060
	0x987848
	0x785830
	0xa89068
	0xa08850
	0x785810
	0xb07820
	0xd89028
	0xe09820
	0xe09818
	0xe8a020
	0xe8a020
	0xe89818
	0xe89820
	0xe08820
	0xf0a048
	0xb06828
	0xb08058
	0x988060
	0x807860
	0xf0f8e8
	0xf8f8f8
	0xf8f8f8
	0xf8f8f8
	0xf8f8f0
	0xf8f8f8
	0xf0f8f0
	0xf0f8f0
	0xf8f8f8
	0xf8f0e8
	0xc8b090
	0x906828
	0xd8a848
	0xd09028
	0xe09830
	0xe09038
	0xc07020
	0xc88020
	0xd89830
	0xd89030
	0xe09030
	0xc88018
	0xc07008
	0xb87008
	0xb06800
	0xb06000
	0xb06000
	0xb05800
	0xb06808
	0x784000
	0x684010
	0x907868
	0xe8e8e8
	0xf0f8f8
	0xf8f8f8
	0xf8f8f8
	0xf0f8f0
	0xf8f8f0
	0xf8f8f8
	0xf8f8f0
	0xf8f8e8
	0xf8f8e0
	0xb09878
	0xa88048
	0xd8a048
	0xd89828
	0xe09018
	0xd08000
	0xd87808
	0xd07008
	0xc06800
	0xb86000
	0xb86000
	0xb86800
	0xb86000
	0xb86800
	0xb87008
	0xb87008
	0xb87008
	0xc07008
	0xc87810
	0xc88018
	0xc88840
	0x684010
	0xc0b0a0
	0xf8f8f8
	0xf0f0f8
	0xf0f8f8
	0xf8f8f8
	0xf8f8f8
	0xf8f8f8
	0xf8f0f0
	0xf8f8e8
	0xf8e0c0
	0x907038
	0xa07038
	0xb88038
	0xb06810
	0xa86000
	0xb06000
	0xb86800
	0xb06000
	0xc87810
	0xc88010
	0xd08010
	0xe88818
	0xf09018
	0xf09010
	0xf09810
	0xe89810
	0xe89810
	0xf09818
	0xf09820
	0xe88810
	0xf09830
	0xd08838
	0x603000
	0xc8b0a8
	0xf8f8f8
	0xf8f8f8
	0xf8f8f8
	0xf8f8f8
	0xf0f0f8
	0xf8f8f8
	0xf8f0f0
	0xf0d0b8
	0x785018
	0xa87028
	0xb87018
	0xc07818
	0xd08018
	0xe08820
	0xd88818
	0xe09020
	0xe09828
	0xe09828
	0xd88820
	0xe89828
	0xe08818
	0xe89018
	0xe08810
	0xe09010
	0xe09810
	0xe09810
	0xe89828
	0xe09028
	0xf09838
	0xe09038
	0xc89040
	0x503000
	0xd0c0b8
	0xf8f0f8
	0xf8f0f8
	0xf8f8f8
	0xf8f8f8
	0xe8f8f8
	0xf8f8f8
	0xf8f0f8
	0xe0c0a8
	0x986020
	0xe8a040
	0xe09018
	0xf09820
	0xe88818
	0xe89018
	0xe89018
	0xe89818
	0xe89818
	0xd89010
	0xe89820
	0xe09020
	0xe09828
	0xd89030
	0xd08830
	0xd09038
	0xc08828
	0xb08020
	0xa87030
	0xa06830
	0x905820
	0x885820
	0x685010
	0x484008
	0xd0d0b8
	0xf8f8f8
	0xf8f8f8
	0xf8f8f8
	0xf8f8f8
	0xf0f8f8
	0xf0f8f8
	0xf8f8f8
	0xc8a890
	0x906020
	0xd89838
	0xe09828
	0xe09020
	0xe09830
	0xe09030
	0xd89830
	0xd09020
	0xc88820
	0xc88820
	0xb87818
	0xb07018
	0xa06818
	0x885818
	0x784818
	0x704818
	0x604008
	0x584008
	0x604020
	0x684830
	0x684830
	0x685038
	0x706840
	0x484828
	0xd0d8c8
	0xf8f8f8
	0xf8f8f8
	0xf8f8f8
	0xf8f8f8
	0xf8f8f8
	0xf8f8f0
	0xf8f8f0
	0x988868
	0x907040
	0xb89850
	0xa87830
	0xb08038
	0x987030
	0x906028
	0x805820
	0x705020
	0x705020
	0x705828
	0x785830
	0x786038
	0x705840
	0x786850
	0x887868
	0x988878
	0xa8a088
	0xc0b8a8
	0xd0c8c0
	0xe0d8c8
	0xe0d8d0
	0xe0d8d0
	0xd8d0c8
	0xc8c8b8
	0xf0f0f0
	0xf8f8f8
	0xf8f8f8
	0xf8f8f8
	0xf8f8f8
	0xf8f8f8
	0xf8f8f0
	0xf8f8f0
	0x706048
	0x685030
	0x705830
	0x705830
	0x685020
	0x685030
	0x786040
	0x887860
	0xa09080
	0xb8a898
	0xc8c0b0
	0xd8d0c0
	0xd8d8d0
	0xe8e8e8
	0xf0f0f0
	0xf8f8f8
	0xf8f8f8
	0xf8f8f8
	0xf8f8f8
	0xf8f8f8
	0xf8f8f8
	0xf8f8f8
	0xf8f8f8
	0xf8f8f8
	0xf0f0f0
	0xf8f8f8
	0xf8f8f8
	0xf8f8f8
	0xf8f8f8
	0xf8f8f8
	0xf8f8f8
	0xf8f8f8
	0xf8f8f0
	0xa89890
	0xa09080
	0xb8a898
	0xd0c0a8
	0xe0d0b8
	0xf8e8e0
	0xf8f0e8
	0xf8f8f8
	0xf8f8f8
	0xf8f8f8
	0xf8f8f8
	0xf8f8f8
	0xf8f8f8
	0xf8f8f8
	0xf8f8f8
	0xf8f8f8
	0xf8f8f8
	0xf8f8f8
	0xf8f8f8
	0xf0f0f0
	0xf0f0f0
	0xf0f0f0
	0xf8f8f8
	0xf8f8f8
	0xf8f8f8
	0xf8f8f8
	0xf8f8f8
	0xf8f8f8
	0xf8f8f8
	0xf8f8f8
	0xf0f8f8
	0xf8f8f8
	0xf8f8f8
	0xf8f8f8
	0xf8f0f0
	0xf8f8f0
	0xf8e8e0
	0xf8f8f0
	0xf8f8f8
	0xf8f8f8
	0xf8f0f8
	0xf8f0f8
	0xf8f0f8
	0xf8f8f8
	0xf8f8f8
	0xf8f8f8
	0xf8f8f8
	0xf8f8f8
	0xf8f8f8
	0xf8f8f8
	0xf8f8f8
	0xf8f8f8
	0xf8f8f8
	0xf8f8f8
	0xf8f8f8
	0xf8f8f8
	0xf8f8f8
	0xf8f8f8
	0xf8f8f8
	0xf8f8f8
	0xf8f8f8
	0xf8f8f8
	0xf8f8f8
	
#include VGAwrite.e
