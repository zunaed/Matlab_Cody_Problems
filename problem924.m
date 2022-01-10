%Problem 924. intersection of matrices
clear all; close all; clc; 

      A = [1     1     0     0     1;...
     1     1     1     0     0;...
     0     1     1     1     0;...
     0     0     1     1     1;...
     1     1     0     1     1];
     
B = [0     0     1     0     0;...
     0     0     0     1     0;...
     0     0     0     0     1;...
     1     0     0     0     0;...
     0     1     0     0     0];     
for row = 1:size(A,1)
    for column = 1:size(A,2) 
        if A(row,column)==1 && B(row,column)==1 
            tf = true
            break
        else
            tf = false
        end
      
    end
     if A(row,column)==1 && B(row,column)==1 
            tf = true
            break
     end
    
end
