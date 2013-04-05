% Last change:
% $Id: linear2dB.m,v 1.2 2011/05/04 20:23:04 darlan Exp $

function X = linear2dB(x)
% Converts a value from linear to dB.

X = 10.*log10(x);