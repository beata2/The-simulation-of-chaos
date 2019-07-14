clear;
a=0.2;
b=0.4;
c=5.7;		%改变C可以生成混沌序列
x(1)=1;
y(1)=0;
z(1)=0;
h=0.01;

for i=1:20000
    K1=-(y(i)+z(i));
    L1=x(i)+a*y(i);
    M1=b+x(i)*z(i)-c*z(i);

    K2=-((y(i)+h/2*L1)+(z(i)+h/2*M1));
    L2=(x(i)+h/2*K1)+a*(y(i)+h/2*L1);
    M2=b+(x(i)+h/2*K1)*(z(i)+h/2*M1)-c*(z(i)+h/2*M1);

    K3=-((y(i)+h/2*L2)+(z(i)+h/2*M2));
    L3=(x(i)+h/2*K2)+a*(y(i)+h/2*L2);
    M3=b+(x(i)+h/2*K2)*(z(i)+h/2*M2)-c*(z(i)+h/2*M2); 

    K4=-((y(i)+h*L3)+(z(i)+h*M3));
    L4=(x(i)+h*K3)+a*(y(i)+h*L3);
    M4=b+(x(i)+h*K3)*(z(i)+h*M3)-c*(z(i)+h*M3);  

    x(i+1)=x(i)+h/6*(K1+2*K2+2*K3+K4);
    y(i+1)=y(i)+h/6*(L1+2*L2+2*L3+L4);
    z(i+1)=z(i)+h/6*(M1+2*M2+2*M3+M4);
end
figure(1);
plot3(x,y,z);
title('Rossler等式的三维相空间吸引子');
xlabel('X(t)');
ylabel('Y(t)');
zlabel('Z(t)');
grid;
figure(2);
plot(x);
title('Rossler等式的X相序列');
xlabel('t');
Ylabel('X(t)');
grid;
x=x';
y=y';
z=z';

    