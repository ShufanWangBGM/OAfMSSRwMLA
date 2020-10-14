x=rand(1,10000);
r1=1;
b1=100;
r2=1.25;
b2=75;


lumda = 1;

x1 = randi(100,[1,10000]); 

for sigma=1:300 %start of getting deterministic CR
eta1 = normrnd(0,sigma,[1,10000]);
eta = abs(eta1);
y1 = x1+eta1;

y = fix(y1);
for i=1:10000
if y(i)>=b2
    if x1(i)>=b2
        cr(i) = ((ceil(lumda*b2)-1)*r2 +b2)/b2;
    else if x1(i)<=ceil(lumda*b2)-1
            cr(i) = r2;
        else
            cr(i) = ((ceil(lumda*b2)-1)*r2+b2)/x1(i);
        end
    end
else if x1(i)>=ceil(b1/lumda)
        cr(i) = (ceil(b1/lumda)-1+b1)/b2;
    else if x1(i)>=b2
        cr(i) = x1(i)/b2;
        else cr(i)=1; 
        end
    end
end
end
crm(sigma) = sum(cr)/10000;
end %end of get deterministic CR
plot(crm);


hold on

lumda = 0.75;


for sigma=1:300 %start of getting deterministic CR
eta1 = normrnd(0,sigma,[1,10000]);
eta = abs(eta1);
y1 = x1+eta1;

y = fix(y1);
for i=1:10000
if y(i)>=b2
    if x1(i)>=b2
        cr(i) = ((ceil(lumda*b2)-1)*r2 +b2)/b2;
    else if x1(i)<=ceil(lumda*b2)-1
            cr(i) = r2;
        else
            cr(i) = ((ceil(lumda*b2)-1)*r2+b2)/x1(i);
        end
    end
else if x1(i)>=ceil(b1/lumda)
        cr(i) = (ceil(b1/lumda)-1+b1)/b2;
    else if x1(i)>=b2
        cr(i) = x1(i)/b2;
        else cr(i)=1;
        end
    end
end
end
crm(sigma) = sum(cr)/10000;
end %end of get deterministic CR
plot(crm);


hold on

lumda = 0.5;



for sigma=1:300 %start of getting deterministic CR
eta1 = normrnd(0,sigma,[1,10000]);
eta = abs(eta1);
y1 = x1+eta1;

y = fix(y1);
for i=1:10000
if y(i)>=b2
    if x1(i)>=b2
        cr(i) = ((ceil(lumda*b2)-1)*r2 +b2)/b2;
    else if x1(i)<=ceil(lumda*b2)-1
            cr(i) = r2;
        else
            cr(i) = ((ceil(lumda*b2)-1)*r2+b2)/x1(i);
        end
    end
else if x1(i)>=ceil(b1/lumda)
        cr(i) = (ceil(b1/lumda)-1+b1)/b2;
    else if x1(i)>=b2
        cr(i) = x1(i)/b2;
        else cr(i)=1; 
        end
    end
end
end
crm(sigma) = sum(cr)/10000;
end %end of get deterministic CR
plot(crm);


hold on

lumda = 0.25;



for sigma=1:300 %start of getting deterministic CR
eta1 = normrnd(0,sigma,[1,10000]);
eta = abs(eta1);
y1 = x1+eta1;

y = fix(y1);
for i=1:10000
if y(i)>=b2
    if x1(i)>=b2
        cr(i) = ((ceil(lumda*b2)-1)*r2 +b2)/b2;
    else if x1(i)<=ceil(lumda*b2)-1
            cr(i) = r2;
        else
            cr(i) = ((ceil(lumda*b2)-1)*r2+b2)/x1(i);
        end
    end
else if x1(i)>=ceil(b1/lumda)
        cr(i) = (ceil(b1/lumda)-1+b1)/b2;
    else if x1(i)>=b2
        cr(i) = x1(i)/b2;
        else cr(i)=1; %i made a correction here
        end
    end
end
end
crm(sigma) = sum(cr)/10000;
end %end of get deterministic CR
plot(crm);

title('Deterministic CR with different \lambda');
xlabel('\sigma');
ylabel('Competitive ratio');
legend('\lambda = 1','\lambda = 0.75','\lambda = 0.5','\lambda = 0.25','Location','northwest');