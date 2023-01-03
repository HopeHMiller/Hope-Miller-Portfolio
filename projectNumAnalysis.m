
a=0;
h=0.3;
N=60;
y0=0.1;

fun = @(t,y) 10*y-10*y^2;

[t,y1] = rk4(fun,a,h,y0,N);

exactY= @(t) exp(10*t)/(9+exp(10*t));
Y=exactY(t);
subplot(1,3,1)
title('h=0.3')
hold on
plot(t,y1,'Color','b')
plot(t,Y,'Color','r')

hold off
legend('approximation','exact')


h=0.325;
[t,y2] = rk4(fun,a,h,y0,N);
subplot(1,3,2)
title('h=0.325')
hold on
plot(t,y2,'Color','b')
plot(t,exactY(t),'Color','r')
legend('approximation','exact')
hold off

h=0.35;
[t,y3] = rk4(fun,a,h,y0,N);
subplot(1,3,3)
title('h=0.35')
hold on
plot(t,y3,'Color','b')
plot(t,exactY(t),'Color','r')
legend('approximation','exact')
hold off



