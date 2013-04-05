% Last change:
% $Id: dBm2Linear.m,v 1.2 2011/05/04 20:23:04 darlan Exp $

function x = dBm2Linear(X)
% DBM2LINEAR - Converts a value from dBm to linear.
%  
x = (10.^(X./10))./1000;