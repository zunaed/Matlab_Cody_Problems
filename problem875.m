%Problem 875. Return a list sorted by number of consecutive occurrences
 % x = [1 2 2 2 3 3 7 7 93]  y = [2 3 7 1 93]
 % x = [1 1 2 2 2 3 3 7 7 1 93]  y = [2 1 3 7 1 93]
 % x = [1 0 0 2 2 -5 9 9 2 1 1 1 0 11]; y_correct1 = [1 0 2 9 -5 0 1 2 11] ;
 % x = [1 0 1 1 0 0]; y_correct0 = [0 1 0 1] ;
clear all; close all; clc; 

  x = [1 0 0 2 2 -5 9 9 2 1 1 1 0 11];
  y=x ; 
  occur =1 ; 
  
for k = 1:length(x)-1 
    if x(k)==x(k+1)
        occur = occur + 1; 
        if occur>1
           y(k)=NaN ;
        end
    else 
        occur =1;
    end
end
  
y(isnan(y))=[] ; 
new = zeros(size(y));last = new;
sy=1; sx=1 ; count1 =0; 
% 
for k = sy:length(y)
    
    for j = sx:length(x)
        if y(k)==x(j)
            count1 = count1+1 ;
            new(k) = count1
        else
            count1 =0 ;
            sx = j ;
            break
           
        end
       
    end
                  
end

sorting = find(hist(new,unique(new))>1)
x=find(new==(sorting(1)))

% for k=1:length(y)-1 
%     for k= 1:length(y)-1
%                  
% [out,idx]=sort(new,'descend')   
% for i=1:length(y)
%     last(i)=y((idx(i)))
% end      
               
  
