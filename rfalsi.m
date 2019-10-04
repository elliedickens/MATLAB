function c=rfalsi(f,a,b,n)
    
    %defining a vector to store all values of c
    approxv = [];
    
 
    %checking that there is a root within the interval with sign change 
    if f(a)*f(b)<0
        
        %iterating through method n amount of times 
        for i=1:n
           
            %calculating c value and storing in vector 
            c(i) = a - (f(a)*((b-a)/(f(b) - f(a))));
            approxv=c(i);

            %deciding if c value will replace a or b to form new interval
            if ((f(a)*f(c(i)))<0)
                b=c(i);
            elseif ((f(b)*f(c(i)))<0)
                a=c(i);  
            else
                break
                
            end
        end
     
        %displaying vector of approximations 
        Q4_root = approxv
    
    %not allowing program to continue unless there is a root within the
    %given interval
    else
        disp("Enter a different interval, no root within")
        
    end
end
           
         