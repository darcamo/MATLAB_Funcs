% Last change:
% $Id: randn_c.m,v 1.1 2011/05/04 20:55:32 darlan Exp $

function y = randn_c(nRows,NCols,rs)
% RANDN_C - Gera uma matriz aleatória em que todos os seus elementos são
% "zero-mean circularly-complex Gaussian".
%   nRows -> Número de linhas da matriz
%   NCols -> Número de colunas da matriz
%   rs -> RandStream for the random number generation. If not provided the
%         default RandStream will be usedg

if nargin < 3
    rs = RandStream.getDefaultStream();
end

y = (rs.randn(nRows,NCols)+i*rs.randn(nRows,NCols))/sqrt(2);