//Write a Matlab program to find even and odd parts of the signal 
//x(t) = e^2t

//Finding even and odd parts of the signal, x(t) = exp(2*t)

tmin = -3;
tmax = 3;
dt = .1;
t = tmin:dt:tmax; //set a time vector

x1 = exp(2*t); //generate the given signal
x2 = exp(-2*t); //generate the time folded signal

if( x2 == x1)
    disp('The given signal is even signal');
else if ( x2 == (-x1))
        disp('The given signal is odd signal')
else
    disp('The given signal is neither even nor odd signal');
end
end

xe = (x1 + x2)/2; //compute even part
xo = (x1 - x2)/2; //compute odd part

ymin = min([min(x1), min(x2), min(xe), min(xo)]);
ymax = max([min(x1), max(x2), max(xe), max(xo)]);

subplot(2,2,1);plot(t,x1);//axis([tmin tmax ymin ymax]);
xlabel('t');ylabel('x1(t)');title('signal x(t)');

subplot(2,2,2);plot(t,x2);//axis([tmin tmax ymin ymax]);
xlabel('t');ylabel('x2(t)');title('signal x(-t)');

subplot(2,2,3);plot(t,xe);//axis([tmin tmax ymin ymax]);
xlabel('t');ylabel('xe(t)');title('even part of x(t)');

subplot(2,2,4);plot(t,xo);//axis([tmin tmax ymin ymax]);
xlabel('t');ylabel('xo(t)');title('odd part of x(t)');































