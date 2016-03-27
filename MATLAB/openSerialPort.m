function serialPort = openSerialPort(portName)
% function openSerialPort(portName)
%
% Opens a serial port with the given name and returns the serial object
%
% YOU MUST CLOSE THE SERIAL PORT USING closeSerialPort BEFORE EXITING THE
% SCRIPT
%
% Input: portName: string containing name of serial port to open
%
% Output: serialPort: serial port object to use with other functions
%
% Chase Conley
% Last Updated: Mar 27 2016
% MIT LICENSE

%%%%%%%%%%%%%%%%%%%%%%%%%%% OPEN SERIAL PORT %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

serialPort = serial(portName);          % define serial port
serialPort.BaudRate=9600;               % define baud rate
set(serialPort, 'terminator', 'LF');    % define the terminator for println
fopen(serialPort);

%%%%%%%%%%%%%%%%%%%%%%%%% ESTABLISH CONNECTION %%%%%%%%%%%%%%%%%%%%%%%%%%%%

w=fscanf(serialPort,'%s');
if (w=='A')
    fprintf(serialPort,'%s','A');     % establishContact just wants 
                                      % something in the buffer
end

return