#Uncomment for Beaglebone
BEAGLEBONE = aa

default: sfppi-generic sfppi-vendor

sfppi-generic:
ifndef BEAGLEBONE
	gcc -o sfppi-generic sfppi-generic.c -lwiringPi -lm
else
	gcc -DBEAGLEBONE -o sfppi-generic sfppi-generic.c -lm -li2c
endif

sfppi-vendor:
ifndef BEAGLEBONE
	gcc -o sfppi-vendor sfppi-vendor.c -lwiringPi -lcrypto -lz -lm
else
	gcc -DBEAGLEBONE -o sfppi-vendor sfppi-vendor.c -lcrypto -lz -lm -li2c
endif

clean:
	$(RM) sfppi-generic sfppi-vendor 
