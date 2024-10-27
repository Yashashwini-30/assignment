% Random Number Sequence Generation and Plotting

% Clear workspace and figures
clear;
clc;
close all;

% Parameters
numPoints = input('Enter the number of random points to generate: '); % Number of random points

% Generate random numbers between 0 and 1
randomNumbers = rand(1, numPoints);

% Generate x values (1 to numPoints)
x = 1:numPoints;

% Plotting
figure;
plot(x, randomNumbers, '-o', 'LineWidth', 2, 'MarkerFaceColor', 'b');
grid on;

% Plot settings
xlabel('Index');
ylabel('Random Value');
title('Random Number Sequence');
xlim([1, numPoints]);
ylim([0, 1]);

% Display random numbers in command window
disp('Generated Random Numbers:');
disp(randomNumbers);