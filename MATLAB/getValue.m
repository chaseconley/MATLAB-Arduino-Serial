function value = getValue(serialPort, commandChar)
% function value = getValue(serialPort, commandChar)
%
% Given a serial port and a command char, this function requests and
% returns a single integer value from that port
%
% Inputs:
%       - serialPort: serialPort opened by openSerialPort
%       - commandChar: character used to request data. Must be same as
%                      commandChar in Arduino sketch
% Outputs:
%       - value: integer value from the Arduino
%
% Chase Conley
% Last Updated: Mar 27 2016
% MIT License

fprintf(serialPort, '%s', commandChar);
value = fscanf(serialPort, '%d');

return