function r=lorenz1(t,x)
global a;
global b;
global c;
r=[-c*(x(1)-x(2));a*x(1)-x(2)-x(1)*x(3);b*(x(1)*x(2)-x(3))];
