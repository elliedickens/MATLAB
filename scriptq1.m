%% Question 1

%assigning values given in question 
a=0;
b=pi;
n=12;

%creating formula for height of strips
h=(b-a)/n;

%creating vector of x values 
x=a:h:b;

%creating variable f for function given in question
f = (x.^2).*(exp(sin(x)));

%formula for Simpson's rule, calculating integral 
Q1 = (h/3)*(f(1) + f(end) + 4*sum(f(2:2:end-1)) + 2*sum(f(3:2:end-2)))

%% Question 2
%Part 2A in a seperate function

%Part 2B
%creating the inline function
f=@(x) (log(2+cos(x)))

%Part 2Ci
%using the inline function, given values a and b, and number of strips 8
Q2_8 = simpsons(0,2*pi,f,8)

%Part 2Cii
%using the inline function, given values a and b, and number of strips 16
Q2_16 = simpsons(0,2*pi,f,16)


%Part 2Ciii
%using the inline function, given values a and b, and number of strips 32
Q2_32 = simpsons(0,2*pi,f,32)

%% Question 4

%assigning values given in question 
a= 2;
b= 5;
n= 4;

%creating the function defined as g(x) in question 
f = @(x) sin((pi*x)/2)-(1/x);

%calling function to use the regular falsi method 
Q4 = rfalsi(f,a,b,n)

%% Question 5
%Part 5A in seperate function file

%Part 5B

%creating the inline function that will be used
f = @(x) sin((pi*x)/2)-(1/x);

%assinging values given in question
a=2;
b=5;
epsilon=0.00000001;

%calling function to use the modified regular falsi method
%using convergence criteria epsilon instead of number of strips 
Q5 = modrfalsi(f,a,b,epsilon);

