#Uncomment for Beaglebone

default: sfppi-generic sfppi-vendor

sfppi-generic:
	gcc -o sfppi-generic sfppi-generic.c -lm -li2c

sfppi-vendor:
	gcc -o sfppi-vendor sfppi-vendor.c -lcrypto -lz -lm -li2c

clean:
	$(RM) sfppi-generic sfppi-vendor 
