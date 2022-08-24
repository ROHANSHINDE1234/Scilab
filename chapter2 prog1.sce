//Program to plot some standard signals

//Write a matlab program to generate standard signals like unit impulse, 
//unit step, unit ramp, parabolic, sinusoidal, triangular pulse, signum, sinc 
//and gaussian signals.

tmin = -20;
dt = 0.1;
tmax = 20; 
t = tmin:dt:tmax; //sets a timer vector

//unit impulse signal

x1 = 1;
x2 = 0;
x = x1.*(t==0) + x2.*(t~=0); //generates a unit impulse signal
subplot(3,3,1); //plots the generated signal
plot(t,x); //plots the generated signal
xlabel('t');
ylabel('x(t)');
title('unit impluse signal');

//unit step signal

x1 = 1;
x2 = 0;
x = x1.*(t >= 0)+ x2.*(t < 0); //generates a unit step signal
subplot(3,3,2); //plots the generated signal
plot(t,x); //plots the generated signal
xlabel('t');
ylabel('x(t)');
title('unit step signal');

//unit ramp signal

x1 = t;
x2 = 0;
x = x1.*(t >= 0) + x2.*(t < 0); //generates a unit ramp signal
subplot(3,3,3); //plots the generated signal
plot(t,x); //plots the generated signal
xlabel('t');
ylabel('x(t)');
title('unit ramp signal');

//parabolic signal

A = 0.4;
x1 = (A*(t.^2))/2;
x2 = 0;
x = x1.*(t>=0) + x2.*(t<0); //generates a parabolic signal
subplot(3,3,4); //plots the generated signal
plot(t,x); //plots the generated signal
xlabel('t');
ylabel('x(t)');
title('parabolic signal');

//triangular signal

a = 2;
x1 = 1 - abs(t)/a;
x2 = 0;
x = x1.*(abs(t)<=a) + x2.*(abs(t)>a); //generates triangular signal
subplot(3,3,6); //plots the generated signal
plot(t,x); //plots the generated signal
xlabel('t');
ylabel('x(t)');
title('triangular signal');

//signum signal

x1 = 1;
x2 = 0;
x3 = -1;
x = x1.*(t>0) +x2.*(t==0) +x3.*(t<0); // generates a signum signal
subplot(3,3,7); //plots the generated signal
plot(t,x); //plots the generated signal
xlabel('t');
ylabel('x(t)');
title('signum signal');

//sinc signal

x = sinc(t); //generates a sinc signal
subplot(3,3,8); //plots the generated signal
plot(t,x); //plots the generated signal
xlabel('t');
ylabel('x(t)');
title('sinc signal');

//gaussian signal

a = 2;
x = exp(-a.*(t.^2)); //generates a gaussian signal
subplot(3,3,9); //plots the generated signal
plot(t,x); //plots the generated signal
xlabel('t');
ylabel('x(t)');
title('gaussian signal');

//sinusoidal signal

a = 2; //declares time period
F = 1000; //compute frequency
n = 5;
t = 0:0.00001:n/F
x = a*sin(2*%pi*F*t); //generates a sinusoidal signal
subplot(3,3,5); //plots the generated signal
plot(t,x); //plots the generated signal
xlabel('t');
ylabel('x(t)');
title('sinusoidal signal');









