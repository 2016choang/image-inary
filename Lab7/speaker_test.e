//
//  speaker_driver.e
//  
//
//  Created by JACOB Rasmussen on 2/22/17.
//
//
start	call speaker return 
	cpfa sample array i
	add i i one
	bne start i count
		
reset	cp i zero
	be start zero zero



return	0
i	0
count	19
array 	0
	363717072
	684428797
	924214714
	1054722904
	1060522280
	940927133
	710078208
	395270728
	33727045
	331804471
	-658103937
	-906590206
	-1047882644
	-1065275049
	-956710970
	-735026858
	-426434300
	-67420806


#include speaker_driver.e
