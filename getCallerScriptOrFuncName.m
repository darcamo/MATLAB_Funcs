function name = getCallerScriptOrFuncName(getTopCallerBool)
% DESCRIPTION name = getCallerName(x, plottype)
%  Get the name of the script or the function that called getCallerName.
% INPUT
%  getTopCallerBool -- If false (default) then getCallerName returns the name of the script of function that called it. If true, then it will return the name of the top script or function that called it.
% OUTPUT
%  Name of the caller name or function.
% REQUIRES
%  Nothing
% TRY 
%  name = getCallerName();

% Author:
%   Darlan Cavalcante Moreira <darcamo@gmail.com>
% Last change:
%   $Id: getCallerScriptOrFuncName.m,v 1.1 2012/02/23 17:28:18 darlan Exp $

if nargin < 1
    getTopCallerBool = false;
end

% These two lines will get the name of the caller script or function
[St,I]=dbstack;

if (getTopCallerBool == true) || (length(St)==1)
    name = St(end,1).name;
else
    name = St(I+1,1).name;
end
