clear;
global a;
t0=[5,1000];f0=[0.8,1.2,0.5];    %����ͼ�ĳ�ʼ����
for a=0:0
    [t,x]=ode45(@lorenz1,t0,f0);
    % ƽ��ͼ
%     subplot(3,1,1);
    plot(x(:,1),x(:,2));
    title('X-Yģ��ƽ��ͼ');xlabel('x');zlabel('y');
%     grid on; 
%     subplot(3,1,2);
%     plot(x(:,1),x(:,3));
%     title('X-Zģ��ƽ��ͼ');xlabel('x');zlabel('z');
%     grid on;  
%     subplot(3,1,3);
%     plot(x(:,2),x(:,3));
%     title('Y-Zģ��ƽ��ͼ');xlabel('y');zlabel('z');

    
    % ��άͼ��
    
%     plot3(x(:,1),x(:,2),x(:,3));
%     title('ģ��ͼ');xlabel('x');ylabel('y');zlabel('z');
%     grid on;
%     pause;
end
