% Given N and L, return a list of numbers (in ascending order) that divides the interval [-L L] into N equal-length segments.
% For example, if L = 3 and N = 2
%     y = [ -3 0 3 ]

% function y = your_fcn_name(N,L)
N=2 ;L =3 ; 
  a = -L:L ; 
  s = size(a,2) ; 
  n = N+1 ; 
  int = ceil(s/n);
  new = zeros(1,n) ;
  
  
      for i = 1: n 
          new(i)= a((int*i))  ;
      end
  
% end