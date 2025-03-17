% Taha Akhlaq MATLAB Assignment 5: Plotting

clc; % clear command window



% Question 1
x = linspace(-pi, pi, 400); % generate x values
y_cos = cos(x); % true cos(x)
num_approximations = 10; % number of even-order approximations (2 to 20)
approx_matrix = zeros(num_approximations, length(x)); 

% build each taylor approximation for cos(x)
for k = 1:num_approximations
    order = 2 * k; 
    approx = zeros(size(x));
    for n = 0:2:order
        approx = approx + ((-1)^(n/2)) * (x.^n) / factorial(n);
    end
    approx_matrix(k, :) = approx;
end

% plot cos(x) and all approximations on one figure
figure;
plot(x, y_cos, 'k', 'LineWidth', 2); 
hold on;
orders = 2:2:20;
for k = 1:num_approximations
    plot(x, approx_matrix(k, :), '--', 'LineWidth', 1.5);
end
hold off;
xlabel('x');
ylabel('y');
title('cos(x) and Taylor Series Approximations');

% create legend
legend_entries = cell(1, num_approximations + 1);
legend_entries{1} = 'cos(x)';
for k = 1:num_approximations
    legend_entries{k+1} = sprintf('%d^{th} order', orders(k));
end
legend(legend_entries, 'Location', 'Best');


% Question 2
figure;

% subplot 1: cos(x)
subplot(1,2,1);
plot(x, y_cos, 'k', 'LineWidth', 2);
xlabel('x');
ylabel('cos(x)');
title('cos(x)');

% subplot 2: Taylor approximations
subplot(1,2,2);
hold on;
for k = 1:num_approximations
    plot(x, approx_matrix(k, :), 'LineWidth', 1.5);
end
hold off;
xlabel('x');
ylabel('Approximation');
title('Taylor Series Approximations');
legend(legend_entries(2:end), 'Location', 'Best');

% Question 3
[X, Y] = meshgrid(linspace(-8,8,100), linspace(-8,8,100));
R = sqrt(X.^2 + Y.^2);

% define sinc(R) 
Z = sin(pi * R) ./ (pi * R);
Z(R == 0) = 1; % if R=0

figure;
surf(X, Y, Z);
shading interp;
xlabel('X');
ylabel('Y');
zlabel('sinc(R)');
title('Surface Plot of sinc Function');
colorbar;



% Output:
