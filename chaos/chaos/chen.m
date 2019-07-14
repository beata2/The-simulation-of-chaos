a=35;
b=3;
c=28;
x(1)=0.8;
y(1)=1.2;
z(1)=0.5;
h=0.022;
for i=1:100
    K1=y(i);
    L1=z(i);
    M1=x(i)-0.5*sinh(x(i))-y(i)-0.6*z(i);

    K2=y(i)+h/2*L1;
    L2=z(i)+h/2*M1;
    M2=(x(i)+h/2*K1)-0.5*sinh((x(i)+h/2*K1))-(y(i)+h/2*L1)-0.6*(z(i)+h/2*M1);

    K3=(y(i)+h/2*L2);
    L3=(z(i)+h/2*M2);
    M3=(x(i)+h/2*K2)-0.5*sinh((x(i)+h/2*K2))-(y(i)+h/2*L2)-0.6*(z(i)+h/2*M2);

    
    K4=(y(i)+h*L3);
    L4=(z(i)+h*M3);
    M4=(x(i)+h*K3)-0.5*sinh((x(i)+h*K3))-(y(i)+h*L3)-0.6*(z(i)+h*M3);

    x(i+1)=x(i)+h/6*(K1+2*K2+2*K3+K4);
    y(i+1)=y(i)+h/6*(L1+2*L2+2*L3+L4);
    z(i+1)=z(i)+h/6*(M1+2*M2+2*M3+M4);
end
%for j=1:250000
%   x(j)=x(10000+j);
%   y(j)=y(10000+j);
%   z(j)=z(10000+j);
%end
figure(1);
plot3(x,y,z);
title('Chen等式的三维相空间吸引子');
xlabel('X(t)');
ylabel('Y(t)');
zlabel('Z(t)');
grid;
% figure(2);
% plot(x);
% title('Chen等式的X相序列');
% xlabel('t');
% Ylabel('X(t)');
% grid;
x2=x';