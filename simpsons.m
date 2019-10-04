function I=simpsons(a,b,f,n)
    
    %using modulus to check whether the n-value is even 
    if mod(n,2)==0
        
        %creating formula for height of strips
        h=(b-a)/n;
        
        %creating vector of x values 
        x=a:h:b;
        
        %formula for Simpson's rule, calculating integral
        I = (h/3)*(f(x(1)) + f(x(end)) + 4*sum(f(x(2:2:end-1))) + 2*sum(f(x(3:2:end-2))));
        
    
    %not allowing the program to run unless n-value is even        
    else
        disp("Your n value is not even, please try again")
        
    end 
end