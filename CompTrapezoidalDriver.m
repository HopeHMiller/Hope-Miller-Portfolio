% comptrap homework 4 prob 2a
fun = @(x) x^2*exp(-x)+x*log(x+1);    %natural log is witten log in matlab?
a=1;
b=3;
n=4;
format long
CompTrapezoidal(fun,1,3,4)