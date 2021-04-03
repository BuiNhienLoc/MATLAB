clc
A= @(x) (10+2.*(10.*sind(90-x))+10)/2.*(sind(x).*10); %a)
x=0:0.01:180;
plot(x,A(x))   %b)
grid on
B= @(x) -(10+2.*(10.*sind(90-x))+10)/2.*(sind(x).*10); %c)
fprintf('The max area A is %g when the angle is %g degree\n',A(fminbnd(B,0,180)),fminbnd(B,0,180)) %d)
plot(x,A(x),fminbnd(B,0,180),A(fminbnd(B,0,180)),'rx')
grid on