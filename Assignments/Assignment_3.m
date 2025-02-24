% Taha Akhlaq MATLAB Assignment 3: Ones and Zeros and Some Other Numbers

clc; % clear command window


% Question 1
x = linspace(-pi/2, pi/2, 1e4);
u = abs(tan(x));
v = u(u <= 10 & u > 0);
gmean = exp(mean(log(v)));
disp(['Geometric Mean: ', num2str(gmean)]);


% Question 2
A = repmat((1:256)', 1, 256);
B = repmat(1:256, 256, 1);
L = (abs(A - 100) + abs(B - 100) < 40) & (sqrt((A - 100).^2 + (B - 100).^2) > 15);
figure;
imshow(L);
title('Logical Matrix L');


% Question 3
dice = 1:6;
d1 = dice;
d2 = dice';
d3 = reshape(dice, [1 1 6]);
d = d1 + d2 + d3;
num_valid = sum(d(:) >= 11);
total = numel(d);
probability = num_valid / total;
disp(['Probability of sum >= 11: ', num2str(probability)]);


% Output:
