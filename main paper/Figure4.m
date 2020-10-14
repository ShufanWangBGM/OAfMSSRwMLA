%The best deterministic algorithm is based on different r and b, however
%they all need to rent until day b_i-1 and buy at day b_i. In this case it
%is shop 3 and the worst competitive ratio is 2.19.
r1=1;
b1=100;
r2=1.25;
b2=75;

for i=1:10
lumda(i) = i/10;
end

x1 = randi(3000,[1,10000]); 
for j=1:10
crm(j)=(ceil(b2*lumda(j)-1)*r2+b2)/b2;
end
plot(crm, '-*');

hold on

for i=1:10
lumda(i) = i/10;
end

 
for j=1:10
crm(j)=(ceil(b1/lumda(j)-1)+b1)/b2;
end
plot(crm, '-o');

for j=1:10
    crm(j)=2.19;
end
plot(crm, '-s');
title('Impact of hyperparameter \lambda');
xlabel('\lambda');
ylabel('Worst Case Competitive ratio');
legend('Perfect prediction','Prediction with large errors','Best Deterministic','Location','northwest');
