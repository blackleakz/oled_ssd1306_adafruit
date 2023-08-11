# Arduino.cc - Adafruit OLED SSD1306 Display Tutorial


```
Author: BlackLeakz
Website: https://blackzspace.de
Github: https://github.com/blackleakz/oled_ssd1306_adafruit/tree/main/Arduino.cc%20-%20OLED%20SSD1306

Description:

In this tutorial, you'll learn how to use the Adafruit's OLED SSD1306 Display for Arduino.cc !


```

# Steps:

1 : Importing the right libarys:

```cpp
#include <Adafruit_GFX.h>
#include <Adafruit_SSD1306.h>

```

2 : Define the target-device + it's parameters!

```cpp

// Self-explained variables!
#define SCREEN_WIDTH 128   
#define SCREEN_HEIGHT 64
#define OLED_RESET     -1 
#define SCREEN_ADDRESS 0x3C

Adafruit_SSD1306 display(SCREEN_WIDTH, SCREEN_HEIGHT, &Wire, OLED_RESET);
```

3 : Initialize Display by running this code in ``` void setup() {}```

```cpp

void setup() {
 // SETING UP DISPLAY
    if(!display.begin(SSD1306_SWITCHCAPVCC, SCREEN_ADDRESS)) {
    Serial.println(F("Console > SSD1306 allocation failed"));
    for(;;);
    }
    display.display();
    display.clearDisplay();

    display.println("TEST"); // Displays TEST
    display.display();

}

```

# You are finished! Thats all about displaying some text!, If you want to draw a bitmap-logo, add this instead the code-section before!::

```cpp
// THIS IS A TEST BITMAP, DESIGNED FOR BLACKZSPACE, YOU CAN TEST THE IMAGE BY CALLING drawbitmap function. INFO: We'll use this function in this tutorial!
#define LOGO_HEIGHT   32
#define LOGO_WIDTH    32
const unsigned char NaN [] PROGMEM = {
	// 'favicon-32x32, 32x32px
	0xc0, 0x00, 0x00, 0x03, 0x80, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
	0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x30, 0x00, 0x00, 0x00, 0x30, 0x00, 0x0f, 0xf8, 
	0x30, 0x00, 0x1f, 0xfc, 0x30, 0x00, 0x38, 0x08, 0x30, 0x00, 0x30, 0x00, 0x30, 0x00, 0x30, 0x00, 
	0x37, 0xf0, 0x30, 0x00, 0x3e, 0x78, 0x38, 0x00, 0x38, 0x1c, 0x1e, 0x00, 0x30, 0x1c, 0x0f, 0xc0, 
	0x30, 0x0c, 0x03, 0xf0, 0x30, 0x0c, 0x00, 0xf8, 0x30, 0x0e, 0x00, 0x3c, 0x30, 0x0e, 0x00, 0x1c, 
	0x30, 0x0c, 0x00, 0x0c, 0x30, 0x0c, 0x00, 0x0c, 0x30, 0x1c, 0x00, 0x1c, 0x38, 0x38, 0x70, 0x38, 
	0x3f, 0xf0, 0x7f, 0xf0, 0x37, 0xe0, 0x1f, 0xe0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
	0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x80, 0x00, 0x00, 0x01, 0xc0, 0x00, 0x00, 0x03
};


// FUNCTION WHICH DRAWS THE DEFINED BITMAP LOGO
void testdrawbitmap(void) {
  display.clearDisplay();

  display.drawBitmap(
    (display.width()  - LOGO_WIDTH ) / 2,
    (display.height() - LOGO_HEIGHT) / 2,
    NaN, LOGO_WIDTH, LOGO_HEIGHT, 1);
  display.display();
  delay(4500);
}
void setup() {
     //STARTS SERIAL-COMMUNICATION ON BAUDRATE: 115200
    Serial.begin(115200);
    Serial.println("Serial-comm. started.");

    // SETING UP DISPLAY
    if(!display.begin(SSD1306_SWITCHCAPVCC, SCREEN_ADDRESS)) {
    Serial.println(F("Console > SSD1306 allocation failed"));
    for(;;);
    }
    display.display();
    display.clearDisplay();

    // DRAWING LOGO
    testdrawbitmap();
    delay(5000);


    
}

void loop() {

}



```



