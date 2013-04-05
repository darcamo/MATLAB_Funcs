% Last change:
% $Id: dB2Linear.m,v 1.2 2011/05/04 20:23:04 darlan Exp $

function x = dB2Linear(X)
% Converts a value from dB to linear.

x = 10.^(X./10);