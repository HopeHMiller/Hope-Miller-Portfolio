 function [t,y] = rk4(fun,a,h,y0,N)
 
t = zeros(N+1,1); 
y = zeros(N+1,1); 
t(1) = a;
y(1) = y0;
 
for i = 1:N
    t(i+1) = t(i) + h;
    k1 = h*fun(t(i),y(i));
    k2 = h*fun(t(i)+h/2,y(i)+k1/2);
    k3 = h*fun(t(i)+h/2,y(i)+k2/2);
    k4 = h*fun(t(i)+h,y(i)+k3);
    y(i+1) = y(i) + (1/6)*(k1 + 2*k2 + 2*k3 + k4);
end