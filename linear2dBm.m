% Last change:
% $Id: linear2dBm.m,v 1.2 2011/05/04 20:23:04 darlan Exp $

function X = linear2dBm(x)
% LINEAR2DBM - 
%   Converts a value from linear to dBm.

X = 10.*log10(x.*1000);