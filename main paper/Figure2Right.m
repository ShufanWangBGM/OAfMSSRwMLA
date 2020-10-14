x=rand(1,10000);
r1=1;
b1=100;
r2=1.25;
b2=75;

x1 = randi(100,[1,10000]); 
lumda = 1;

k=fix(b2*lumda); %start of getting randomized distribution 
l=ceil(b1/lumda);

for i=1:k
    q(i)= ((b2-r2)/b2)^(k-i)*(r2/(b2*(1-(1-r2/b2)^k)));
    if i==1 qs(i)=q(i);
    else
        qs(i)=qs(i-1)+q(i);
    end
end
for i=1:l
    r(i)= ((b1-1)/b1)^(l-i)*(1/(b1*(1-(1-1/b1)^l)));
    if i==1 rs(i)=r(i);
    else
        rs(i)=rs(i-1)+r(i);
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
    for m=1:l
        if x(i)<=rs(1)
            B(i)=1;
        else if x(i)>rs(m) && x(i)<=rs(m+1)
                B(i)=m+1;
            end
        end
    end
end %end of getting distribution

for sigma=1:300 %start of getting randomized CR
eta1 = normrnd(0,sigma,[1,10000]);
eta = abs(eta1);
y1 = x1+eta1;

y = fix(y1);
for i=1:10000
    if y(i)>=b2
        if x1(i)>=b2
            cr(i)=((A(i)-1)*r2+b2)/b2;
        elseif x1(i)<=A(i)
                cr(i)=r2;
            else
                cr(i)=((A(i)-1)*r2+b2)/x1(i);
        end
    else
        if x1(i)<=B(i)
            cr(i)=1;
        else
            if B(i)<=b2 && x1(i)<=b2
                cr(i)=(B(i)-1+b1)/x1(i);
            else
                if B(i)<=b2 && x1(i)>b2
                    cr(i)=(B(i)-1+b1)/b2;
                else  
                    cr(i)=(B(i)-1+b1)/b2;   
                end
            end
        end
    end
end
crm1(sigma)=sum(cr)/10000;
end %end of getting randomized CR
plot(crm1);

hold on

lumda = 0.75;

k=fix(b2*lumda); %start of getting randomized distribution 
l=ceil(b1/lumda);

for i=1:k
    q(i)= ((b2-r2)/b2)^(k-i)*(r2/(b2*(1-(1-r2/b2)^k)));
    if i==1 qs(i)=q(i);
    else
        qs(i)=qs(i-1)+q(i);
    end
end
for i=1:l
    r(i)= ((b1-1)/b1)^(l-i)*(1/(b1*(1-(1-1/b1)^l)));
    if i==1 rs(i)=r(i);
    else
        rs(i)=rs(i-1)+r(i);
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
    for m=1:l
        if x(i)<=rs(1)
            B(i)=1;
        else if x(i)>rs(m) && x(i)<=rs(m+1)
                B(i)=m+1;
            end
        end
    end
end %end of getting distribution

for sigma=1:300 %start of getting randomized CR
eta1 = normrnd(0,sigma,[1,10000]);
eta = abs(eta1);
y1 = x1+eta1;

y = fix(y1);
for i=1:10000
    if y(i)>=b2
        if x1(i)>=b2
            cr(i)=((A(i)-1)*r2+b2)/b2;
        elseif x1(i)<=A(i)
                cr(i)=r2;
            else
                cr(i)=((A(i)-1)*r2+b2)/x1(i);
        end
    else
        if x1(i)<=B(i)
            cr(i)=1;
        else
            if B(i)<=b2 && x1(i)<=b2
                cr(i)=(B(i)-1+b1)/x1(i);
            else
                if B(i)<=b2 && x1(i)>b2
                    cr(i)=(B(i)-1+b1)/b2;
                else  
                    cr(i)=(B(i)-1+b1)/b2;   
                end
            end
        end
    end
end
crm1(sigma)=sum(cr)/10000;
end %end of getting randomized CR
plot(crm1);

hold on

lumda = 0.5;

k=fix(b2*lumda); %start of getting randomized distribution 
l=ceil(b1/lumda);

for i=1:k
    q(i)= ((b2-r2)/b2)^(k-i)*(r2/(b2*(1-(1-r2/b2)^k)));
    if i==1 qs(i)=q(i);
    else
        qs(i)=qs(i-1)+q(i);
    end
end
for i=1:l
    r(i)= ((b1-1)/b1)^(l-i)*(1/(b1*(1-(1-1/b1)^l)));
    if i==1 rs(i)=r(i);
    else
        rs(i)=rs(i-1)+r(i);
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
    for m=1:l
        if x(i)<=rs(1)
            B(i)=1;
        else if x(i)>rs(m) && x(i)<=rs(m+1)
                B(i)=m+1;
            end
        end
    end
end %end of getting distribution

for sigma=1:300 %start of getting randomized CR
eta1 = normrnd(0,sigma,[1,10000]);
eta = abs(eta1);
y1 = x1+eta1;

y = fix(y1);
for i=1:10000
    if y(i)>=b2
        if x1(i)>=b2
            cr(i)=((A(i)-1)*r2+b2)/b2;
        elseif x1(i)<=A(i)
                cr(i)=r2;
            else
                cr(i)=((A(i)-1)*r2+b2)/x1(i);
        end
    else
        if x1(i)<=B(i)
            cr(i)=1;
        else
            if B(i)<=b2 && x1(i)<=b2
                cr(i)=(B(i)-1+b1)/x1(i);
            else
                if B(i)<=b2 && x1(i)>b2
                    cr(i)=(B(i)-1+b1)/b2;
                else  
                    cr(i)=(B(i)-1+b1)/b2;   
                end
            end
        end
    end
end
crm1(sigma)=sum(cr)/10000;
end %end of getting randomized CR
plot(crm1);

hold on

lumda = 0.25;

k=fix(b2*lumda); %start of getting randomized distribution 
l=ceil(b1/lumda);

for i=1:k
    q(i)= ((b2-r2)/b2)^(k-i)*(r2/(b2*(1-(1-r2/b2)^k)));
    if i==1 qs(i)=q(i);
    else
        qs(i)=qs(i-1)+q(i);
    end
end
for i=1:l
    r(i)= ((b1-1)/b1)^(l-i)*(1/(b1*(1-(1-1/b1)^l)));
    if i==1 rs(i)=r(i);
    else
        rs(i)=rs(i-1)+r(i);
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
    for m=1:l
        if x(i)<=rs(1)
            B(i)=1;
        else if x(i)>rs(m) && x(i)<=rs(m+1)
                B(i)=m+1;
            end
        end
    end
end %end of getting distribution

for sigma=1:300 %start of getting randomized CR
eta1 = normrnd(0,sigma,[1,10000]);
eta = abs(eta1);
y1 = x1+eta1;

y = fix(y1);
for i=1:10000
    if y(i)>=b2
        if x1(i)>=b2
            cr(i)=((A(i)-1)*r2+b2)/b2;
        elseif x1(i)<=A(i)
                cr(i)=r2;
            else
                cr(i)=((A(i)-1)*r2+b2)/x1(i);
        end
    else
        if x1(i)<=B(i)
            cr(i)=1;
        else
            if B(i)<=b2 && x1(i)<=b2
                cr(i)=(B(i)-1+b1)/x1(i);
            else
                if B(i)<=b2 && x1(i)>b2
                    cr(i)=(B(i)-1+b1)/b2;
                else  
                    cr(i)=(B(i)-1+b1)/b2;   
                end
            end
        end
    end
end
crm1(sigma)=sum(cr)/10000;
end %end of getting randomized CR
plot(crm1);

title('Randomized CR with different \lambda');
xlabel('\sigma');
ylabel('Competitive ratio');
legend('\lambda = 1','\lambda = 0.75','\lambda = 0.5','\lambda = 0.25','Location','northwest');
