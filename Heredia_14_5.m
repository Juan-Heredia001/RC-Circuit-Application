% RC Circuit application
% Define some constants
RC = 0.2;
vi = 2; % initial voltage
va = 10; % applied voltage

% Use ode45 to solve the differential equation
% Solve for voltage after 0.25s
[t,V] = ode45(@(t,V) (va-V)/RC, [0 0.25], vi);
n = length(V);

% Report the voltage after 0.25 seconds
fprintf("-The voltage after 0.25s is %.2f V.\n",V(n))

% Solve for voltage after 0.5s
[t,V] = ode45(@(t,V) (va-V)/RC, [0 0.5], vi);
n = length(V);

% Report the voltage after 0.5 seconds
fprintf("-The voltage after 0.5s is %.2f V.\n",V(n))

% Solve for voltage after 1.0s
[t,V] = ode45(@(t,V) (va-V)/RC, [0 1.0], vi);
n = length(V);

% Report the voltage after 1.0 seconds
fprintf("-The voltage after 1.0s is %.2f V.\n",V(n))

% Logical Comparison
near8V = V>7.9 & V<8.1;
time8V = t(near8V);
fprintf("It will take %.2f seconds for the voltage to reach 8V.\n",time8V)

% Plot the voltage for one seconds
plot(t,V)
ylim([0 10])
grid on
title("The capacitor voltage in a RC Circuit")
xlabel("Time(s)")
ylabel("The Voltage(V)")
