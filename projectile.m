%MATLAB Script to Simulate Projectile Motion

% Parameters
v0 = 50;           % Initial velocity in m/s
theta = 45;       % Launch angle in degrees
g = 9.81;         % Gravitational acceleration in m/s^2

% Convert angle to radians
theta_rad = deg2rad(theta);

% Time of flight calculation
t_flight = (2 * v0 * sin(theta_rad)) / g;

% Time vector from 0 to time of flight
t = linspace(0, t_flight, 100);

% Projectile motion equations
x = v0 * cos(theta_rad) * t;              % Horizontal displacement
y = v0 * sin(theta_rad) * t - 0.5 * g * t.^2; % Vertical displacement

% Calculate range and maximum height
range = x(end);
max_height = (v0^2 * (sin(theta_rad))^2) / (2 * g);

% Plotting the trajectory
figure;
plot(x, y);
xlabel('Horizontal Distance (m)');
ylabel('Vertical Distance (m)');
title('Projectile Motion');
grid on;
axis equal;

% Display range and maximum height
disp(['Range: ', num2str(range), ' m']);
disp(['Maximum Height: ', num2str(max_height), ' m']);

% Hold on for the annotations
hold on;
plot(range, 0, 'ro'); % Mark the range point
text(range, 0, '  Range', 'VerticalAlignment', 'bottom');

plot(0, max_height, 'bo'); % Mark the max height point
text(0, max_height, '  Max Height', 'VerticalAlignment', 'bottom');

hold off;