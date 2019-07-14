x(1)=0.8;
y(1)=1.2;
z(1)=0.5;
h=0.01;

for i=1:800
    x(i+1)=y(i);
    y(i+1)=z(i);
    z(i+1)=x(i)-0.4*(sinh(x(i))+sinh(y(i)))-0.8*z(i);
end
    figure(1);
    plot3(x,y,z);
    title('11');
    xlabel('X(t)');
    ylabel('Y(t)');
    zlabel('Z(t)');
    grid;

x=x';
y=y';
z=z';
    