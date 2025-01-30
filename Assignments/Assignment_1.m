% Taha Akhlaq MATLAB Assignment 1

clc; % clear command window


% Question 1

u = [17, 30, 8] %1

v = [9; 15; 12] %2

A = [-3; -2; -1; 1; 2] .* u %3

B = A' .* v  %4


% Question 2

c = exp( (j * pi) / 3) %1

d = sqrt(j) %2

m = 4.3 ^ sqrt(20000) %3

n = (2 ^ 7.5) + ( 25 * log10 (250) ) %4


% Question 3

A = [8, 1, 12
    -7, -2, -11
    1, -4, 0]

b = [109; -84; 56]

x = A \ b
disp(x);

