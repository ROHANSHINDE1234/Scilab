//Program to plot some standard signals

tmin = -5;
dt = 0.1;
tmax = 5;
t = tmin:dt:tmax;

//Set a timer vector

x1 = 1;
x2 = 0;
x = x1.*(t==0) + x2.*(t~=0);
subplot(3,3,6);
plot(t,x);
xlabel('t');
ylabel('x(t)');
title('unit impluse signal');
