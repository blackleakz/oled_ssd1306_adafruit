# Adafruit OLED SSD1306 DISPLAY for Micropython 



```
Author: BlackLeakz
Website: https://blackzspace.de/
Github: https://github.com/blackleakz/oled_ssd1306_adafruit.git
Description:

This is the Adafruit OLED SSD1306 Display Micropython README File!

In this document, you can find everything "HOW TO RUN ADAFRUIT OLED SSD1306 DISPLAY WITH MICROPYTHON"!

NOTE: YOU MAY HAVE TO FIGURE OUT, WHICH GPIO-PINS YOUR DEVICE USES FOR SCL & SDA!!!
IN THIS EXAMPLE; ILL USE THE NODEMCUv3-ESP8266 !!!
```


# I PREFERRE:

To try/use the i2c-main.py file!

```py

from machine import Pin, I2C
import ssd1306
from time import sleep

# ESP32 Pin assignment 
# i2c = SoftI2C(scl=Pin(22), sda=Pin(21))

# ESP8266 Pin assignment
i2c = I2C(sda=Pin(4), scl=Pin(5))

# using default address 0x3C
oled_width = 128
oled_height = 64
oled = ssd1306.SSD1306_I2C(oled_width, oled_height, i2c)

oled.text('Hello, World 1!', 0, 0)
oled.text('Hello, World 2!', 0, 10)
oled.text('Hello, World 3!', 0, 20)
        
oled.show()

```
