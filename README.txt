Abstract

This software has been written to test/demonstrate communication with I2C peripherals
on Rasperry Pi in C programming language. 

Bosch BMP085 Barometric Pressure/Temperature sensor module from Adafruit (product ID 391)
is selected as target(slave) I2C device. The core functions for communication with the sensor 
are listed in bmp0085.h and bmp085.c files. weatherStation.c is used to demostrate their functionality.
The code is based on the official Bosch data sheet for BMP085 sensor.


INSTALL

To compile the source code just execute the make command within the source code folder.

 #cd weatherStation
 #make

This will create an executable called weatherStation.


USAGE

1. Load the I2C kernel modules to activate the I2C interface on Raspberry Pi.
2. Connect the BMP085 sensor module to Raspberry Pi as described on Adafruit web site.
3. Check the device connectivity and the I2C address of the sensor by using i2cdetect command
which is part of i2c-tools:

 #sudo i2cdetect -y -1

4. Run the weatherStation executable to get the sensors readings for temperature and
atmospheric pressure. For example, to measure the current ambient temperature type:

 #sudo ./weatherStation -a 0x77 -T

where 0x77 is the address of the sensor on the I2C bus obtained with the i2cdetect command. 

To get all available options type:

 #./weaterStation

(sudo command in the examples above it is not required in case your account has rw access to the I2C devices).


WARNING: The program is tested on Raspberry Pi Model B Revision 1 board.
Before use, always check the GPIO and I2C manuals for your Raspberry Pi board to
take possible hardware changes on Pi board in consideration.

The source is provided as it is without any warranty. Use it on your own risk!
The author does not take any responsibility for the damage caused while using this software.

For more references how to connect the sensor to Raspberry Pi check the official guide available
on Adafruit web site.
     
