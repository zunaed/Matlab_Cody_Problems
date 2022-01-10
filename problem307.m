%Problem 307. First non-zero element in each column
%  in->x = [0 1 0 0;
%           4 3 7 0;
%           0 0 2 6;
%           0 9 0 5];
%  out->i = [2 1 2 3]; % row numbers  
x = [0 1 0 0;
          4 3 7 0;
          0 0 2 6;
          0 9 0 5];
      out=zeros(1,size(x,2));
      for k=1:size(x,2)
      n=min(find(x(1:end,k)~=0))
      out(k)= n  
      end


