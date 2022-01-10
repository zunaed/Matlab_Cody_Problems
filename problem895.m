%Problem 895. Generate N equally spaced intervals between -L and L
clear all; close all; clc; 
L = 100; N = 100;

a= [-L:L] 
n = floor(length(a)/N)
y= NaN(1,length(a))

for k=1:n:length(a)
    y(k)=a(k)
end
 y(isnan(y))=[]

