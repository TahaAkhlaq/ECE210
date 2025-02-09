% Taha Akhlaq - MATLAB Assignment 2: Vectorization

clc; % clear command window


% Question 1

u = (-5 : 3 : 7) % 1

v = (-pi : pi/4 : pi)' % 2


% Question 2

n_q2 = prod(1:10)


% Question 3

% Part 1
A = zeros(5,5); % 5x5 Matrix

% Insert 1s
A(1,1) = 1; 
A(2,2) = 1;
A(4,4) = 1;
A(5,4) = 1;
A(5,5) = 1;

A % Display the Matrix


% Part 2
B_left = reshape( [12, 11, 10, 6, 5, 4], [3, 2] ); % Create Left Side of B
B_right = B_left - 3; % Create Right Side of B
B = [B_left, B_right] % Conjoin the Two Sides


% Question 4

%i
t = linspace (-pi, pi, 1000);

%ii
n = (0:50)';
a_n = (2*n + 1);

%iii
terms = (sin(a_n * t) ./ a_n);

%iv
s = sum(terms, 1);

%v
plot(t, s);
grid on;
xlabel('Time (t)');
ylabel('Square Wave Approximation');
title('Square Wave Approximation Using Fourier Series');

% Output:
