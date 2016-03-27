function ports = listSerialPorts()
% function ports = listSerialPorts()
%
% Returns a cell array containing all serial ports available on the machine
% Requires the Instrument Control Toolbox
%
% Chase Conley
% Last Updated: Mar 27 2016
% MIT LICENSE

out = instrhwinfo('serial');

ports = out.AvailableSerialPorts;

return