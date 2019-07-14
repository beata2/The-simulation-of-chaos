function r=lorenz1(t,x)
% r=[x(2);x(3);x(1)-0.5*sinh(x(1))-x(2)-0.6*x(3)];      %第一个图公式
r=[x(2);x(3);x(1)-0.4*(sinh(x(1))+sinh(x(2)))-0.8*x(3)];    %第二个图公式
