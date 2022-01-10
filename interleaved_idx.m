% clear all; close all; clc; 
% Create an index vector defined by two input vectors, one defining the beginnings of one or more index ranges, and the other defining the ends of the ranges.
% The difficult part is that for and while loops are disallowed. No looping! [I apologize for the rudimentary regexp test for 'for' 'while' and 'eval'.] My test cases scan for usage of these substrings, so choice of variable names is effectively restricted as well.
% So given 2 input vectors x1 and x2, the desired output is a third vector y, containing [x1(1):x2(1) x1(2):x2(2) ... x1(end):x2(end)]
% Example:
%  x1 = [1 5 12];
%  x2 = [2 8 21];
% Result:
%  y = [1 2 5 6 7 8 12 13 14 15 16 17 18 19 20 21]


function y = interleaved_idx(x1,x2)
    n = length(x1);
    if(n==0) 
        y=[];
    else
        y = [x1(1):1:x2(1),interleaved_idx(x1(2:end), x2(2:end))];
    end
end

% x1 = [1 5 12];
%  x2 = [2 8 21];
%  y = interleaved_idx(x1,x2)