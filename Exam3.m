clc
x = 0;
y = 1;
while abs(y - exp(x)) <= 0.01*exp(x)
    x = x + 0.01;
    y = 1 + x + (x^2)/2 + (x^3)/6;
end
fprintf('The largest value is %g when x is %g\n',exp(x),x)