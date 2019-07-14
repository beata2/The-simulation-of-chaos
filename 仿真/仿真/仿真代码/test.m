clear;
global a;
t0=[5,1000];f0=[0.8,1.2,0.5];    %两个图的初始参数
for a=0:0
    [t,x]=ode45(@lorenz1,t0,f0);
    % 平面图
%     subplot(3,1,1);
    plot(x(:,1),x(:,2));
    title('X-Y模型平面图');xlabel('x');zlabel('y');
%     grid on; 
%     subplot(3,1,2);
%     plot(x(:,1),x(:,3));
%     title('X-Z模型平面图');xlabel('x');zlabel('z');
%     grid on;  
%     subplot(3,1,3);
%     plot(x(:,2),x(:,3));
%     title('Y-Z模型平面图');xlabel('y');zlabel('z');

    
    % 三维图形
    
%     plot3(x(:,1),x(:,2),x(:,3));
%     title('模型图');xlabel('x');ylabel('y');zlabel('z');
%     grid on;
%     pause;
end
