clc
f=[0.4 0.45]; %variables: x is the kg of corn feed ; y is the kg of wheat feed
A=[-0.1 -0.15; -0.75 -0.7; 1 1 ; -1 0 ; 0 -1]; %0.1x + 0.15y >= 0.65
                                               %0.75x + 0.7y >= 4
                                               %x + y <= 7
                                               %x >= 0
                                               %y >= 0
b=[-0.650;-4;7;0;0];
k=simlp(f,A,b);
fprintf('The optimal feed mis is %g gram of corn feed and %g gram of wheat feed.\n',k(1)*1000,k(2)*1000)