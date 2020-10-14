%k in this code refers to m (number of predictions)
x=rand(1,10000);
r1=1;
b1=100;
r2=1.25;
b2=75;

lumda=1;

k=8;

x2 = randi(100,[1,10000]); 
x1 = x2(ones(1,k),:);
c=zeros(300,10000);

for sigma=1:300 
eta1 = normrnd(0,sigma,[k,10000]);
eta = abs(eta1);
y1 = x1+eta1;

y = fix(y1);

for i=1:10000
    for j=1:k
        if y(j,i)>=b2
            c(sigma,i)=c(sigma,i)+1;
        end
    end
    
    if c(sigma,i) >=4
        if x2(i)>=b2
            cr1(sigma,i) = ((ceil(lumda*b2/(2*c(sigma,i)-k+1))-1)*r2 +b2)/b2;
        else if x2(i)<=ceil(lumda*b2/(2*c(sigma,i)-k+1))-1
                cr1(sigma,i) = r2;
            else
                cr1(sigma,i) = ((ceil(lumda*b2/(2*c(sigma,i)-k+1))-1)*r2+b2)/x2(i);
            end
        end
    else if x2(i)>=b2
        cr1(sigma,i) = (ceil(b2*(k+1-2*c(sigma,i))/lumda)-1+b1)/b2;
        else
        cr1(sigma,i) = 1;
        end
    end
end
crm1(sigma) = sum(cr1(sigma,:))/10000;
end
plot(crm1);
title('Multiple ML-predictions Deterministic CR \lambda=1');
hold on


k=5;

x1 = x2(ones(1,k),:);
c=zeros(300,10000);

for sigma=1:300 
eta1 = normrnd(0,sigma,[k,10000]);
eta = abs(eta1);
y1 = x1+eta1;

y = fix(y1);

for i=1:10000
    for j=1:k
        if y(j,i)>=b2
            c(sigma,i)=c(sigma,i)+1;
        end
    end
    
    if c(sigma,i) >=3
        if x2(i)>=b2
            cr1(sigma,i) = ((ceil(lumda*b2/(2*c(sigma,i)-k+1))-1)*r2 +b2)/b2;
        else if x2(i)<=ceil(lumda*b2/(2*c(sigma,i)-k+1))-1
                cr1(sigma,i) = r2;
            else
                cr1(sigma,i) = ((ceil(lumda*b2/(2*c(sigma,i)-k+1))-1)*r2+b2)/x2(i);
            end
        end
    else if x2(i)>=b2
        cr1(sigma,i) = (ceil(b2*(k+1-2*c(sigma,i))/lumda)-1+b1)/b2;
        else
        cr1(sigma,i) = 1;
        end
    end
end
crm1(sigma) = sum(cr1(sigma,:))/10000;
end
plot(crm1);

hold on
k=3;

x1 = x2(ones(1,k),:);
c=zeros(300,10000);

for sigma=1:300 
eta1 = normrnd(0,sigma,[k,10000]);
eta = abs(eta1);
y1 = x1+eta1;

y = fix(y1);

for i=1:10000
    for j=1:k
        if y(j,i)>=b2
            c(sigma,i)=c(sigma,i)+1;
        end
    end
    
    if c(sigma,i) >=2
        if x2(i)>=b2
            cr1(sigma,i) = ((ceil(lumda*b2/(2*c(sigma,i)-k+1))-1)*r2 +b2)/b2;
        else if x2(i)<=ceil(lumda*b2/(2*c(sigma,i)-k+1))-1
                cr1(sigma,i) = r2;
            else
                cr1(sigma,i) = ((ceil(lumda*b2/(2*c(sigma,i)-k+1))-1)*r2+b2)/x2(i);
            end
        end
    else if x2(i)>=b2
        cr1(sigma,i) = (ceil(b2*(k+1-2*c(sigma,i))/lumda)-1+b1)/b2;
        else
        cr1(sigma,i) = 1;
        end
    end
end
crm1(sigma) = sum(cr1(sigma,:))/10000;
end
plot(crm1);

k=1;

x1 = x2(ones(1,k),:);
c=zeros(300,10000);

for sigma=1:300 
eta1 = normrnd(0,sigma,[k,10000]);
eta = abs(eta1);
y1 = x1+eta1;

y = fix(y1);

for i=1:10000
    for j=1:k
        if y(j,i)>=b2
            c(sigma,i)=c(sigma,i)+1;
        end
    end
    
    if c(sigma,i) >=1
        if x2(i)>=b2
            cr1(sigma,i) = ((ceil(lumda*b2/(2*c(sigma,i)-k+1))-1)*r2 +b2)/b2;
        else if x2(i)<=ceil(lumda*b2/(2*c(sigma,i)-k+1))-1
                cr1(sigma,i) = r2;
            else
                cr1(sigma,i) = ((ceil(lumda*b2/(2*c(sigma,i)-k+1))-1)*r2+b2)/x2(i);
            end
        end
    else if x2(i)>=b2
        cr1(sigma,i) = (ceil(b2*(k+1-2*c(sigma,i))/lumda)-1+b1)/b2;
        else
        cr1(sigma,i) = 1;
        end
    end
end
crm1(sigma) = sum(cr1(sigma,:))/10000;
end
plot(crm1);

xlabel('\sigma ');
ylabel('Competitive ratio');
legend('m=8','m=5','m=3','m=1','Location','northwest');