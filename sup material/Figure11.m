x=rand(1,10000);
r1=1;
b1=100;
r2=1.25;
b2=75;
lumda = 1;

k=5;

x2 = randi(300,[1,10000]); 
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
end
end

for sigma=1:300 

for i=1:10000    
    if c(sigma,i)>=3
    n=fix(b2*lumda/(2*c(sigma,i)-k+1));
    for d=1:n
        q(d,i)= ((b2-r2)/b2)^(n-d)*(r2/(b2*(1-(1-r2/b2)^n)));
        if d==1 qs(d,i)=q(d,i);
        else
            qs(d,i)=qs(d-1,i)+q(d,i);
        end
    end
    else
    l=ceil(b1*(k-2*c(sigma,i)+1)/lumda);
    for d=1:l
        r(d,i)= ((b1-1)/b1)^(l-d)*(1/(b1*(1-(1-1/b1)^l)));
        if d==1 rs(d,i)=r(d,i);
        else
            rs(d,i)=rs(d-1,i)+r(d,i);
        end
    end
    end
end
for i=1:10000
    for j=1:k
        if x(i)<=qs(1)
            A(i)=1;
        else if x(i)>qs(j) && x(i)<=qs(j+1)
                A(i)=j+1;
            end
        end
    end
    l=ceil(b1*(k-2*c(sigma,i)+1)/lumda);
    for m=1:l
        if x(i)<=rs(1)
            B(i)=1;
        else if x(i)>rs(m) && x(i)<=rs(m+1)
                B(i)=m+1;
            end
        end
    end
end
end

for sigma=1:300
for i=1:10000
    if c(sigma,i)>=3
        if x2(i)>=b2
            cr2(sigma,i)=((A(i)-1)*r2+b2)/b2;
        elseif x2(i)<=A(i)
                cr2(sigma,i)=r2;
            else
                cr2(sigma,i)=((A(i)-1)*r2+b2)/x2(i);
        end
    else
        if x2(i)<=B(i)
            cr2(sigma,i)=1;
        else
            if B(i)<=b2 && x2(i)<=b2
                cr2(sigma,i)=(B(i)-1+b1)/x2(i);
            else
                if B(i)<=b2 && x2(i)>b2
                    cr2(sigma,i)=(B(i)-1+b1)/b2;
                else  
                    cr2(sigma,i)=(B(i)-1+b1)/b2;   
                end
            end
        end
    end    

end

crm2(sigma) = sum(cr2(sigma,:))/10000;
end

plot(crm2);

hold on

lumda = 0.75;

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
end
end

for sigma=1:300 

for i=1:10000    
    if c(sigma,i)>=3
    n=fix(b2*lumda/(2*c(sigma,i)-k+1));
    for d=1:n
        q(d,i)= ((b2-r2)/b2)^(n-d)*(r2/(b2*(1-(1-r2/b2)^n)));
        if d==1 qs(d,i)=q(d,i);
        else
            qs(d,i)=qs(d-1,i)+q(d,i);
        end
    end
    else
    l=ceil(b1*(k-2*c(sigma,i)+1)/lumda);
    for d=1:l
        r(d,i)= ((b1-1)/b1)^(l-d)*(1/(b1*(1-(1-1/b1)^l)));
        if d==1 rs(d,i)=r(d,i);
        else
            rs(d,i)=rs(d-1,i)+r(d,i);
        end
    end
    end
end
for i=1:10000
    for j=1:k
        if x(i)<=qs(1)
            A(i)=1;
        else if x(i)>qs(j) && x(i)<=qs(j+1)
                A(i)=j+1;
            end
        end
    end
    l=ceil(b1*(k-2*c(sigma,i)+1)/lumda);
    for m=1:l
        if x(i)<=rs(1)
            B(i)=1;
        else if x(i)>rs(m) && x(i)<=rs(m+1)
                B(i)=m+1;
            end
        end
    end
end
end

for sigma=1:300
for i=1:10000
    if c(sigma,i)>=3
        if x2(i)>=b2
            cr2(sigma,i)=((A(i)-1)*r2+b2)/b2;
        elseif x2(i)<=A(i)
                cr2(sigma,i)=r2;
            else
                cr2(sigma,i)=((A(i)-1)*r2+b2)/x2(i);
        end
    else
        if x2(i)<=B(i)
            cr2(sigma,i)=1;
        else
            if B(i)<=b2 && x2(i)<=b2
                cr2(sigma,i)=(B(i)-1+b1)/x2(i);
            else
                if B(i)<=b2 && x2(i)>b2
                    cr2(sigma,i)=(B(i)-1+b1)/b2;
                else  
                    cr2(sigma,i)=(B(i)-1+b1)/b2;   
                end
            end
        end
    end    

end

crm2(sigma) = sum(cr2(sigma,:))/10000;
end

plot(crm2);

hold on

lumda=0.5;

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
end
end

for sigma=1:300 

for i=1:10000    
    if c(sigma,i)>=3
    n=fix(b2*lumda/(2*c(sigma,i)-k+1));
    for d=1:n
        q(d,i)= ((b2-r2)/b2)^(n-d)*(r2/(b2*(1-(1-r2/b2)^n)));
        if d==1 qs(d,i)=q(d,i);
        else
            qs(d,i)=qs(d-1,i)+q(d,i);
        end
    end
    else
    l=ceil(b1*(k-2*c(sigma,i)+1)/lumda);
    for d=1:l
        r(d,i)= ((b1-1)/b1)^(l-d)*(1/(b1*(1-(1-1/b1)^l)));
        if d==1 rs(d,i)=r(d,i);
        else
            rs(d,i)=rs(d-1,i)+r(d,i);
        end
    end
    end
end
for i=1:10000
    for j=1:k
        if x(i)<=qs(1)
            A(i)=1;
        else if x(i)>qs(j) && x(i)<=qs(j+1)
                A(i)=j+1;
            end
        end
    end
    l=ceil(b1*(k-2*c(sigma,i)+1)/lumda);
    for m=1:l
        if x(i)<=rs(1)
            B(i)=1;
        else if x(i)>rs(m) && x(i)<=rs(m+1)
                B(i)=m+1;
            end
        end
    end
end
end

for sigma=1:300
for i=1:10000
    if c(sigma,i)>=3
        if x2(i)>=b2
            cr2(sigma,i)=((A(i)-1)*r2+b2)/b2;
        elseif x2(i)<=A(i)
                cr2(sigma,i)=r2;
            else
                cr2(sigma,i)=((A(i)-1)*r2+b2)/x2(i);
        end
    else
        if x2(i)<=B(i)
            cr2(sigma,i)=1;
        else
            if B(i)<=b2 && x2(i)<=b2
                cr2(sigma,i)=(B(i)-1+b1)/x2(i);
            else
                if B(i)<=b2 && x2(i)>b2
                    cr2(sigma,i)=(B(i)-1+b1)/b2;
                else  
                    cr2(sigma,i)=(B(i)-1+b1)/b2;   
                end
            end
        end
    end    

end

crm2(sigma) = sum(cr2(sigma,:))/10000;
end

plot(crm2);

hold on


lumda=0.25;

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
end
end

for sigma=1:300 

for i=1:10000    
    if c(sigma,i)>=3
    n=fix(b2*lumda/(2*c(sigma,i)-k+1));
    for d=1:n
        q(d,i)= ((b2-r2)/b2)^(n-d)*(r2/(b2*(1-(1-r2/b2)^n)));
        if d==1 qs(d,i)=q(d,i);
        else
            qs(d,i)=qs(d-1,i)+q(d,i);
        end
    end
    else
    l=ceil(b1*(k-2*c(sigma,i)+1)/lumda);
    for d=1:l
        r(d,i)= ((b1-1)/b1)^(l-d)*(1/(b1*(1-(1-1/b1)^l)));
        if d==1 rs(d,i)=r(d,i);
        else
            rs(d,i)=rs(d-1,i)+r(d,i);
        end
    end
    end
end
for i=1:10000
    for j=1:k
        if x(i)<=qs(1)
            A(i)=1;
        else if x(i)>qs(j) && x(i)<=qs(j+1)
                A(i)=j+1;
            end
        end
    end
    l=ceil(b1*(k-2*c(sigma,i)+1)/lumda);
    for m=1:l
        if x(i)<=rs(1)
            B(i)=1;
        else if x(i)>rs(m) && x(i)<=rs(m+1)
                B(i)=m+1;
            end
        end
    end
end
end

for sigma=1:300
for i=1:10000
    if c(sigma,i)>=3
        if x2(i)>=b2
            cr2(sigma,i)=((A(i)-1)*r2+b2)/b2;
        elseif x2(i)<=A(i)
                cr2(sigma,i)=r2;
            else
                cr2(sigma,i)=((A(i)-1)*r2+b2)/x2(i);
        end
    else
        if x2(i)<=B(i)
            cr2(sigma,i)=1;
        else
            if B(i)<=b2 && x2(i)<=b2
                cr2(sigma,i)=(B(i)-1+b1)/x2(i);
            else
                if B(i)<=b2 && x2(i)>b2
                    cr2(sigma,i)=(B(i)-1+b1)/b2;
                else  
                    cr2(sigma,i)=(B(i)-1+b1)/b2;   
                end
            end
        end
    end    

end

crm2(sigma) = sum(cr2(sigma,:))/10000;
end

plot(crm2);




title('Multiple ML-predictions Randomized CR with different \lambda m=5');
xlabel('\sigma ');
ylabel('Competitive ratio');
legend('\lambda=1','\lambda=0.75','\lambda=0.5','\lambda=0.25','Location','northwest');