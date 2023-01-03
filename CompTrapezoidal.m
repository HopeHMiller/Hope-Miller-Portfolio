% comp trap subroutine
function Q = CompTrapezoidal(fun, a, b, n)
h=(b-a)/n;
Q=0;

for i=1:n-1
    Q=Q+fun(a+h*i);
    disp(a+h*i)
    disp(Q)
end
Q=(h/2)*((2*Q)+fun(a)+fun(b));

end