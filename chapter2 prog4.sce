//To perform addition and multiplication on 
//the following two signals.
//1) xa(t)=1; 0<t<1        2) xb(t)=t;   0<t<1
//        =2; 1<t<2                =1;   1<t<2    
//        =3; 2<t<3                =3-t; 2<t<3

tmin = -1; tmax = 5; dt = 0.1;
t=tmin:dt:tmax; //set a time vector

x1=1;
x2=2;
x3=3-t;
xa=x1.*(t>0&t<1)+x2.*(t>=1&t<=2)+x1.*(t>2&t<3);
xb=t.*(t>0&t<1)+x1.*(t>=1&t<=2)+x3.*(t>2&t<3);
xadd=xa+xb; //Add the two signals
xmul=xa.*xb; //Multiply two signals

xmin=min([min(xa), min(xb), min(xadd), min(xmul)]);
xmax=max([max(xa), max(xb), max(xadd), max(xmul)]);

subplot(2,3,1);plot(t,xa);
xlabel('t');ylabel('xa(t)');title('Signal xa(t)');

subplot(2,3,2);plot(t,xb);
xlabel('t');ylabel('xb(t)');title('Signal xb(t)');

subplot(2,3,3);plot(t,xadd);
xlabel('t');ylabel('xadd(t)');title('sum of xa(t) and xb(t)');

subplot(2,3,4);plot(t,xa);
xlabel('t');ylabel('xa(t)');title('Signal xa(t)');

subplot(2,3,5);plot(t,xb);
xlabel('t');ylabel('xb(t)');title('Signal xb(t)');

subplot(2,3,6);plot(t,xmul);
xlabel('t');ylabel('xmul(t)');title('product of xa(t) and xb(t)');








