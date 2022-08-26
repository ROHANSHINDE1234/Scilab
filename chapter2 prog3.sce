// Write a Matlab program to find the energy and power of the signal 
// x(t) = 10sin(10pit)

// Program to compute energy and power of the signal
// x(t) = 10sin(10*pi*t)

clc;

tmax = 10; dt = 0.01; T0 = 10;
t = -tmax:dt:tmax; // Set up a time vector

x = 10*sin(10*%pi*t); // generate the given signal x(t)
xsq = x.^2; // compute square of the given signal x(t)
E = trapz(t,xsq); // use trapezoidal - rule numerical integration to find energy
P = E / (2*T0); // divide the energy by period to compute power

disp(['Energy, E =',num2str(E),'Joules']);
disp(['Power, P =',num2str(P),'watts']);






























