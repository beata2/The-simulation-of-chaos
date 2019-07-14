clear;
global a;
global b;
global c;
b=8/3;c=10;
t0=[0,100];f0=[1,1,1];
for a=28:28
    [t,x]=ode45(@lorenz1,t0,f0);
    a
%     subplot(3,1,1);
%     plot(t,x(:,1),'r',t,x(:,2),'g',t,x(:,3),'b');
%     title('Lorenz 模型变量时域响应');legend('x','y','z'); xlabel('t');
    subplot(3,1,2);
    plot3(x(:,1),x(:,2),x(:,3));
    title('Lorenz模型相图');xlabel('x');ylabel('y');zlabel('z');
    grid on;
    subplot(3,1,3);
    plot(x(:,1),x(:,3));
    title('Lorenz模型X—Z平面相图'); xlabel('x');ylabel('z');
    grid on;
    pause;
end


% clear; clc 
% r=4; 
% for a=-2:0.02:1 
%     for b=-2:0.02:1 
%         x=a;y=b; 
%         for n=1:20 
%             x1=x*x-y*y+a; 
%             y1=2*x*y+b; 
%             x=x1;y=y1; 
%         end 
%         if (x*x+y*y)<r 
%             plot(a,b) 
%         end 
%         hold on 
%     end 
% end
