% %Problem 970. Piecewise linear interpolation
% Given an Mx2 vector and a row of M-1 integers,
% output a two column vector that linearly interpolates Y times between each successive pair of values in X.
% Any consecutive duplicate points are to be removed.For example
% x = [1 1 ; 3 0 ; 1 1]   y = [5 3]
% x is an Mx2 vector, and y is a row of M-1 numbers.
% Tracers linearly interpolates y(1) points between x(1,:) and x(2,:),
% followed by y(2) points between x(2,:) and x(3,:), and so on...
% The resultant output is a two column vector with consecutive
% duplicate points are removed.
clear all; close all; clc ;  
x=[1 1 ; 2 3 ; 4 2 ; 5 -2]; ; y=[6 5 3];
n=sum(y)-(length(y)-1);
out = zeros(n,2);

rows = 1; rowe = y(1) ; 

for k=1:length(y)  
    out((rows:rowe),1) = x(k,1):((x((k+1),1)-x(k,1))/(y(k)-1)):x((k+1),1)
     out((rows:rowe),2) = x(k,2):((x((k+1),2)-x(k,2))/(y(k)-1)):x((k+1),2)
   if k==length(y)
     break
    else 

    rows = rows + y(k) - 1 
    rowe = rows +y(k+1)-1
    
   end

end
