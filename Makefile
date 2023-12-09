#Uncomment for Beaglebone

default: sfppi-generic sfppi-vendor

sfppi-generic: sfppi-generic.o
	gcc -o sfppi-generic sfppi-generic.c -lm -li2c

sfppi-vendor: sfppi-vendor.o
	gcc -o sfppi-vendor sfppi-vendor.c -lcrypto -lz -lm -li2c

clean:
	$(RM) sfppi-generic sfppi-vendor 
