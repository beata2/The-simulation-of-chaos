x=0.1;
u=2:0.001:4;
for i=1:2000
    x=u.*(x-x.^2);
  if i>=1900
    plot(u,x);
    title('Logistic Map');
    xlabel('a');
    ylabel('X(n)');
    hold on;
  end
end