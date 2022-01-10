% %Create logical matrix with a specific row and column sums
% Given two numbers n and s, build an n-by-n logical matrix (of only zeros and ones), 
% such that both the row sums and the column sums are all equal to s. Additionally, 
% the main diagonal must be all zeros.
% You can assume that: 0 < s < n
% Example:
% Take n=10 and s=3, here is a possible solution
% M =
%      0     1     0     0     1     1     0     0     0     0
%      0     0     1     0     1     1     0     0     0     0
%      0     0     0     0     1     1     0     0     1     0
%      0     0     0     0     0     0     1     1     0     1
%      1     0     0     0     0     0     1     0     1     0
%      0     1     1     0     0     0     0     1     0     0
%      1     0     0     1     0     0     0     0     0     1
%      0     0     0     1     0     0     0     0     1     1
%      1     1     0     0     0     0     0     1     0     0
%      0     0     1     1     0     0     1     0     0     0
clear all; close all; clc; 
n = 5 ; 
s = 2 ; 
A = randi([0 1], n,n)
sz     = size(A);
index = 1:sz(1)+1:sz(1)*sz(2)
A(index) = 0 

for row= 1:n
    check(row) = sum(A(row,:))
end

for row = 1:n 
    if 



