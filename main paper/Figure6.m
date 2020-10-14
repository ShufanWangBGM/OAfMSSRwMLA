
r1=1;
b1=15;
r2=1.5;
b2=10;
x1 = [ones(1,389), ones(1,404)*2, ones(1,409)*3, ones(1,412)*4, ones(1,414)*5, ones(1,415)*6, ones(1,419)*7, ones(1,421)*8, ones(1,423)*9, ones(1,424)*10, ones(1,425)*11, ones(1,426)*12, ones(1,430)*13, ones(1,431)*14, ones(1,432)*15, ones(1,437)*16, ones(1,440)*17, ones(1,442)*18, ones(1,446)*19, ones(1,447)*20, ones(1,448)*21, ones(1,458)*22, ones(1,608)*24];

for i=1:10
    lumda(i) = i/10;
end

 
for j=1:10
for i=1:10000
y(i) = x1(i);
if y(i)>=b2
    if x1(i)>=b2
        cr(i) = ((ceil(lumda(j)*b2)-1)*r2 +b2)/b2;
    else if x1(i)<=ceil(lumda(j)*b2)-1
            cr(i) = r2;
        else
            cr(i) = ((ceil(lumda(j)*b2)-1)*r2+b2)/x1(i);
        end
    end
else if x1(i)>=ceil(b1/lumda(j))
        cr(i) = (ceil(b1/lumda(j))-1+b1)/b2;
    else if x1(i)>=b2
        cr(i) = x1(i)/b2;
        else cr(i)=1; 
        end
    end
end
end
crm(j)=sum(cr)/10000;
end
plot(crm, '-*');
hold on
for j=1:10
for i=1:10000
p=randi([1,10000]);
if p <= 361
    y(i)=1;
else
    if p<=749
        y(i)=2;
    else
        if p<=1139
            y(i)=3;
        else
            if p<=1529
                y(i)=4;
            else
                if p<=1920
                    y(i)=5;
                else
                    if p<=2314
                        y(i)=6;
                    else
                        if p<=2709
                            y(i)=7;
                        else
                            if p<=3106
                                y(i)=8;
                            else
                                if p<=3507
                                    y(i)=9;
                                else
                                    if p<=3911
                                        y(i)=10;
                                    else
                                        if p<=4319
                                            y(i)=11;
                                        else
                                            if p<=4729
                                                y(i)=12;
                                            else
                                                if p<=5139
                                                    y(i)=13;
                                                else
                                                    if p<=5549
                                                        y(i)=14;
                                                    else
                                                        if p<=5960
                                                            y(i)=15;
                                                        else
                                                            if p<=6384
                                                                y(i)=16;
                                                            else
                                                                if p<=6810
                                                                    y(i)=17;
                                                                else
                                                                    if p<=7238
                                                                        y(i)=18;
                                                                    else
                                                                        if p<=7670 
                                                                            y(i)=19;
                                                                        else
                                                                            if p<=8103
                                                                                y(i)=20;
                                                                            else
                                                                                if p<=8542
                                                                                    y(i)=21;
                                                                                else
                                                                                    if p<=9008
                                                                                        y(i)=22;
                                                                                    else
                                                                                        if p<=9490
                                                                                            y(i)=23;
                                                                                        else y(i)=24;
                                                                                        end
                                                                                    end
                                                                                end
                                                                            end
                                                                        end
                                                                    end
                                                                end
                                                            end
                                                        end
                                                    end
                                                end
                                            end
                                        end
                                    end
                                end
                            end
                        end
                    end
                end
            end
        end
    end
end


if y(i)>=b2
    if x1(i)>=b2
        cr(i) = ((ceil(lumda(j)*b2)-1)*r2 +b2)/b2;
    else if x1(i)<=ceil(lumda(j)*b2)-1
            cr(i) = r2;
        else
            cr(i) = ((ceil(lumda(j)*b2)-1)*r2+b2)/x1(i);
        end
    end
else if x1(i)>=ceil(b1/lumda(j))
        cr(i) = (ceil(b1/lumda(j))-1+b1)/b2;
    else if x1(i)>=b2
        cr(i) = x1(i)/b2;
        else cr(i)=1; 
        end
    end
end
end
crm(j)=sum(cr)/10000;
end
plot(crm, '-x');
hold on

for j=1:10
for i=1:10000
y(i) = (24-x1(i))/2;
if y(i)>=b2
    if x1(i)>=b2
        cr(i) = ((ceil(lumda(j)*b2)-1)*r2 +b2)/b2;
    else if x1(i)<=ceil(lumda(j)*b2)-1
            cr(i) = r2;
        else
            cr(i) = ((ceil(lumda(j)*b2)-1)*r2+b2)/x1(i);
        end
    end
else if x1(i)>=ceil(b1/lumda(j))
        cr(i) = (ceil(b1/lumda(j))-1+b1)/b2;
    else if x1(i)>=b2
        cr(i) = x1(i)/b2;
        else cr(i)=1; 
        end
    end
end
end
crm(j)=sum(cr)/10000;
end
plot(crm, '-o');


hold on

for j=1:10
for i=1:10000
if x1(i)<=10
    y(i)=24;
else
    y(i)=1;
end
if y(i)>=b2
    if x1(i)>=b2
        cr(i) = ((ceil(lumda(j)*b2)-1)*r2 +b2)/b2;
    else if x1(i)<=ceil(lumda(j)*b2)-1
            cr(i) = r2;
        else
            cr(i) = ((ceil(lumda(j)*b2)-1)*r2+b2)/x1(i);
        end
    end
else if x1(i)>=ceil(b1/lumda(j))
        cr(i) = (ceil(b1/lumda(j))-1+b1)/b2;
    else if x1(i)>=b2
        cr(i) = x1(i)/b2;
        else cr(i)=1; 
        end
    end
end
end
crm(j)=sum(cr)/10000;
end
plot(crm, '-v');

hold on
for j=1:10
for i=1:10000
    if x1(i)<=6
        cr(i)=1.5;
    else
        if x1(i)<=10
            cr(i)=(1.5*6+10)/x1(i);
        else
            cr(i)=(1.5*6+10)/10;
        end
    end
end
crm(j)=sum(cr)/10000;
end
plot(crm, '-s');

xlabel('\lambda');
ylabel('Competitive ratio');
legend('Perfect prediction','Prediction 1','Prediction 2','Prediction 3','Best Deterministic','Location','northwest');
set(gca,'XTick',[1 2 3 4 5 6 7 8 9 10]);
set(gca,'XTickLabel',[0.1 0.2 0.3 0.4 0.5 0.6 0.7 0.8 0.9 1]);
%The reason why we change the label is: in the code, we set \lumda to be
%an 1*10 matrix whose values are 0.1,0.2,...,1. 
%In the plot our output is a matrix so the x axis has to be 1 to 10. 
%The \lumda corresponding to that is 0.1 to 1.
