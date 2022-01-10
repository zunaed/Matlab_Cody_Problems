%Problem 963. We love vectorized solutions. Problem 1 : remove the row average.
%a = [ 1 2 ; 3 5 ];
% b = remove_average_vectorized(a);
% b is [ -0.5 0.5 ; -1 1 ];
a = [ 1 2 ; 3 5 ]
b = zeros(size(a))

for k =1:size(a,2) 
    b(k,1:end) = a(k,1:end)-mean(a(k,1:end))
end


% 
% 
% function y = remove_average_vectorized(x)
%     % This works but is too slow.
% 
%     for row=1:size(x,1)
%       row_average=mean(x(row,:));
%       for col=1:size(x,2)
%         x(row,col)=x(row,col)-row_average; 
%       end
%     end
%   y=x;
% end
