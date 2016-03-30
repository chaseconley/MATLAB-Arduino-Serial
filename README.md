# MATLAB Arduino Serial

Functions and barebones programs for retrieving single values from an Arduino in MATLAB

## Use
These scripts consist of two parts, a MATLAB scipt and associated functions, and an Arduino sketch.
### Arduino
By default, the Arduino sketch is configured to send a response of 2000 whenever a value is requested. To change this value, add code to the Arduino sketch to replace the line:

`// YOUR CODE FOR GENERATING THE INTEGER TO SEND BACK GOES HERE`

This code should set the variable `response` to the desired integer.

Once you have changed the code to send the desired response value, upload it to your Arduino. Leave the Arduino connected via USB so MATLAB can communicate with it.

### MATLAB
The MATLAB code consists of 4 functions and a demo script:
- openSerialPort: opens a serial port of the given name and returns the port. Call this only once when you program first runs.
- getValue: takes a serialport (returned by openSerialPort()) and a command character and returns the integer value sent by the Arduino. Call this whenever you want to get data from the Arduino after you have opened the port
- closeSerialPort: closes the serial port given. YOU MUST MUST MUST close the serial port before your main script ends. You can uses the CloseRequestFcn parameter of figures to call a function when your window is closed: http://www.mathworks.com/help/matlab/ref/figure-properties.html
- listSerialPorts: returns a cell array of all serial ports available on the system. Useful for generating user dropdown menus

SerialRequest.m shows an example of how to use these functions to get a single value from a connected Arduino. Connect your Arduino and use listSerialPorts to identify the serial port. On Macs, it's usually `/dev/tty.usbmodem####` where #### is some number. Change the `portName` variable to be that string and run the function. The script should display a single response number in the command window.

## License
This code is distributed under the MIT License. For more details, see the `LICENSE` file.
