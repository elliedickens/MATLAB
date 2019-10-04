function c=modrfalsi(f,a,b,epsilon)

    %defining a vector to store all values of c
    approxv = [];
    
    %assigning error value to begin while loop 
    error = 1;
    
    %assigning starting counter value to count the number of iterations
    counter=0;

    %checking that there is a root within the interval with sign change 
    if f(a)*f(b)<0
        
        %looping through iterations until convergence criteria is reached 
        while (error>epsilon)
           
            %calculating c value and storing in vector 
            c = a - (f(a)*((b-a)/(f(b)-f(a))));
            approxv=c;

            %deciding if c value will replace a or b to form new interval
            if ((f(a)*f(c))<0)
                b=c;
            elseif ((f(b)*f(c))<0)
                a=c;  
            end
            
            %calculating new error value which is used to determine wheher
            %the while loop will continue
            error = abs(b-a);
            
            %adding 1 to the counter, tracking number of iterations
            counter = counter + 1;
        end
        
        %displaying vector of approximations
        Q5_root = approxv
    
    %not allowing the program to continue unless there is a root within the
    %given interval
    else
        disp("Enter a different interval, no root within")
        
    end
    
    %displaying the counter value which is the number of iterations taken
    disp("The number of iterations taken to reach the convergence criteria was:")
    disp(counter)
end