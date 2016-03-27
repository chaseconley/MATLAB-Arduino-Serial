%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%   SerialRequest.m
% 
%   Skeleton code for getting a single integer value from a serial device. 
%   Establishes a connection with the device, then sends a single command
%   character whenever a reading is needed. Can be used with 
%   SerialResponse.ino to interface an Arduino with MATLAB.
%   
%   Chase Conley
%   Last Updated: Mar 27 2016
%   Distributed under MIT License
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

portName = '/dev/tty.usbmodem1411';
commandChar = 'g';

s1 = openSerialPort(portName);     % Open the serial port 

value = getValue(s1, commandChar); % Get a value from the device
disp(value);                       % Display it

closeSerialPort(s1);               % ALWAYS ALWAYS ALWAYS close the port