function [EbN0] = SNR_dB_to_EbN0_dB(SNR, bits_per_symb)
% DESCRIPTION [EbN0] = SNR_dB_to_EbN0_dB(x, plottype)
%  CDF plot of the input matrix for each
%  column separately. By use of a log scale 
%  the higher part of the input is highlighted.
% INPUT
%  x --         a real matrix (no Nans or Infs)
%  plottype --  String describing the plot, e.g. 'r*'
%               plots red stars.
% OUTPUT
%  only the plot
% REQUIRES
%  Put other m-file names that this one depends on here
% SEE ALSO
%  put related functions here
% TRY 
%  cdfplothigh(randn(10000,1))

% Author:
%   Darlan Cavalcante Moreira <darcamo@gmail.com>
% Last change:
%   $Id: SNR_dB_to_EbN0_dB.m,v 1.1 2012/11/14 01:26:25 darlan Exp $

EbN0 = SNR - 10 * log10(bits_per_symb);