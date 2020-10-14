r1=1;
b1=15;
r2=1.5;
b2=10;
x1 = [ones(1,389), ones(1,404)*2, ones(1,409)*3, ones(1,412)*4, ones(1,414)*5, ones(1,415)*6, ones(1,419)*7, ones(1,421)*8, ones(1,423)*9, ones(1,424)*10, ones(1,425)*11, ones(1,426)*12, ones(1,430)*13, ones(1,431)*14, ones(1,432)*15, ones(1,437)*16, ones(1,440)*17, ones(1,442)*18, ones(1,446)*19, ones(1,447)*20, ones(1,448)*21, ones(1,458)*22, ones(1,608)*24];
y1 = zeros(3,10000);
c = zeros(10,10000);
for i=1:10
    lumda(i) = i/10;
end

for j=1:10
for i=1:10000

y1(1,i) = x1(i);
if y1(1,i)>=b2
    c(j,i)=c(j,i)+1;
end

y1(2,i) = x1(i);
if y1(2,i)>=b2
    c(j,i)=c(j,i)+1;
end

y1(3,i) = x1(i);
if y1(3,i)>=b2
    c(j,i)=c(j,i)+1;
end

if c(j,i)>=2
    if x1(i)>=b2
        cr(i) = ((ceil(lumda(j)*b2/(2*c(j,i)-2))-1)*r2+b2)/b2;
    else
        if x1(i)<=ceil(lumda(j)*b2/(2*c(j,i)-2))-1
            cr(i) = r2;
        else
            cr(i) = ((ceil(lumda(j)*b2/(2*c(j,i)-2))-1)*r2+b2)/x1(i);
        end
    end
else
    if x1(i)>=ceil(b1*(4-2*c(j,i))/lumda(j))
        cr(i) = (ceil(b1*(4-2*c(j,i))/lumda(j))-1+b1)/b2;
    else
        if x1(i)>=b2
        cr(i) = x1(i)/b2;
        else
            cr(i)=1;
        end
    end
end
end
crm(j)=sum(cr)/10000;

end
plot(crm, '-*');
hold on
y1 = zeros(3,10000);
c = zeros(10,10000);
for j=1:10
for i=1:10000

y1(1,i) = x1(i);
if y1(1,i)>=b2
    c(j,i)=c(j,i)+1;
end

p=randi([1,10000]);
if p<=361
    y1(2,i)=1;
else
    if p<=749
        y1(2,i)=2;
    else
        if p<=1139
            y1(2,i)=3;
        else
            if p<=1529
                y1(2,i)=4;
            else
                if p<=1920
                    y1(2,i)=5;
                else
                    if p<=2314
                        y1(2,i)=6;
                    else
                        if p<=2709
                            y1(2,i)=7;
                        else
                            if p<=3106
                                y1(2,i)=8;
                            else
                                if p<=3507
                                    y1(2,i)=9;
                                else
                                    if p<=3911
                                        y1(2,i)=10;
                                    else
                                        if p<=4319
                                            y1(2,i)=11;
                                        else
                                            if p<=4729
                                                y1(2,i)=12;
                                            else
                                                if p<=5139
                                                    y1(2,i)=13;
                                                else
                                                    if p<=5549
                                                        y1(2,i)=14;
                                                    else
                                                        if p<=5960
                                                            y1(2,i)=15;
                                                        else
                                                            if p<=6384
                                                                y1(2,i)=16;
                                                            else
                                                                if p<=6810
                                                                    y1(2,i)=17;
                                                                else
                                                                    if p<=7238
                                                                        y1(2,i)=18;
                                                                    else
                                                                        if p<=7670 
                                                                            y1(2,i)=19;
                                                                        else
                                                                            if p<=8103
                                                                                y1(2,i)=20;
                                                                            else
                                                                                if p<=8542
                                                                                    y1(2,i)=21;
                                                                                else
                                                                                    if p<=9008
                                                                                        y1(2,i)=22;
                                                                                    else
                                                                                        if p<=9490
                                                                                            y1(2,i)=23;
                                                                                        else
                                                                                            y1(2,i)=24;
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
if y1(2,i)>=b2
    c(j,i)=c(j,i)+1;
end

y1(3,i)=x1(i);
if y1(3,i)>=b2
    c(j,i)=c(j,i)+1;
end

if c(j,i)>=2
    if x1(i)>=b2
        cr(i) = ((ceil(lumda(j)*b2/(2*c(j,i)-2))-1)*r2+b2)/b2;
    else
        if x1(i)<=ceil(lumda(j)*b2/(2*c(j,i)-2))-1
            cr(i) = r2;
        else
            cr(i) = ((ceil(lumda(j)*b2/(2*c(j,i)-2))-1)*r2+b2)/x1(i);
        end
    end
else
    if x1(i)>=ceil(b1*(4-2*c(j,i))/lumda(j))
        cr(i) = (ceil(b1*(4-2*c(j,i))/lumda(j))-1+b1)/b2;
    else
        if x1(i)>=b2
        cr(i) = x1(i)/b2;
        else
            cr(i)=1;
        end
    end
end
end
crm(j)=sum(cr)/10000;

end
plot(crm, '-v');
hold on

y1 = zeros(3,10000);
c = zeros(10,10000);
for j=1:10
for i=1:10000

y1(1,i) = x1(i);
if y1(1,i)>=b2
    c(j,i)=c(j,i)+1;
end

p=randi([1,10000]);
if p<=361
    y1(2,i)=1;
else
    if p<=749
        y1(2,i)=2;
    else
        if p<=1139
            y1(2,i)=3;
        else
            if p<=1529
                y1(2,i)=4;
            else
                if p<=1920
                    y1(2,i)=5;
                else
                    if p<=2314
                        y1(2,i)=6;
                    else
                        if p<=2709
                            y1(2,i)=7;
                        else
                            if p<=3106
                                y1(2,i)=8;
                            else
                                if p<=3507
                                    y1(2,i)=9;
                                else
                                    if p<=3911
                                        y1(2,i)=10;
                                    else
                                        if p<=4319
                                            y1(2,i)=11;
                                        else
                                            if p<=4729
                                                y1(2,i)=12;
                                            else
                                                if p<=5139
                                                    y1(2,i)=13;
                                                else
                                                    if p<=5549
                                                        y1(2,i)=14;
                                                    else
                                                        if p<=5960
                                                            y1(2,i)=15;
                                                        else
                                                            if p<=6384
                                                                y1(2,i)=16;
                                                            else
                                                                if p<=6810
                                                                    y1(2,i)=17;
                                                                else
                                                                    if p<=7238
                                                                        y1(2,i)=18;
                                                                    else
                                                                        if p<=7670 
                                                                            y1(2,i)=19;
                                                                        else
                                                                            if p<=8103
                                                                                y1(2,i)=20;
                                                                            else
                                                                                if p<=8542
                                                                                    y1(2,i)=21;
                                                                                else
                                                                                    if p<=9008
                                                                                        y1(2,i)=22;
                                                                                    else
                                                                                        if p<=9490
                                                                                            y1(2,i)=23;
                                                                                        else
                                                                                            y1(2,i)=24;
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
if y1(2,i)>=b2
    c(j,i)=c(j,i)+1;
end

y1(3,i) = 24-x1(i);
if x1(i)<=10
    y1(3,i)=24;
else
    y1(3,i)=1;
end
if y1(3,i)>=b2
    c(j,i)=c(j,i)+1;
end

if c(j,i)>=2
    if x1(i)>=b2
        cr(i) = ((ceil(lumda(j)*b2/(2*c(j,i)-2))-1)*r2+b2)/b2;
    else
        if x1(i)<=ceil(lumda(j)*b2/(2*c(j,i)-2))-1
            cr(i) = r2;
        else
            cr(i) = ((ceil(lumda(j)*b2/(2*c(j,i)-2))-1)*r2+b2)/x1(i);
        end
    end
else
    if x1(i)>=ceil(b1*(4-2*c(j,i))/lumda(j))
        cr(i) = (ceil(b1*(4-2*c(j,i))/lumda(j))-1+b1)/b2;
    else
        if x1(i)>=b2
        cr(i) = x1(i)/b2;
        else
            cr(i)=1;
        end
    end
end
end
crm(j)=sum(cr)/10000;

end
plot(crm, '-^');
hold on

y1 = zeros(3,10000);
c = zeros(10,10000);
for j=1:10
for i=1:10000

y1(1,i) = 24-x1(i);
if y1(1,i)>=b2
    c(j,i)=c(j,i)+1;
end

p=randi([1,10000]);
if p<=361
    y1(2,i)=1;
else
    if p<=749
        y1(2,i)=2;
    else
        if p<=1139
            y1(2,i)=3;
        else
            if p<=1529
                y1(2,i)=4;
            else
                if p<=1920
                    y1(2,i)=5;
                else
                    if p<=2314
                        y1(2,i)=6;
                    else
                        if p<=2709
                            y1(2,i)=7;
                        else
                            if p<=3106
                                y1(2,i)=8;
                            else
                                if p<=3507
                                    y1(2,i)=9;
                                else
                                    if p<=3911
                                        y1(2,i)=10;
                                    else
                                        if p<=4319
                                            y1(2,i)=11;
                                        else
                                            if p<=4729
                                                y1(2,i)=12;
                                            else
                                                if p<=5139
                                                    y1(2,i)=13;
                                                else
                                                    if p<=5549
                                                        y1(2,i)=14;
                                                    else
                                                        if p<=5960
                                                            y1(2,i)=15;
                                                        else
                                                            if p<=6384
                                                                y1(2,i)=16;
                                                            else
                                                                if p<=6810
                                                                    y1(2,i)=17;
                                                                else
                                                                    if p<=7238
                                                                        y1(2,i)=18;
                                                                    else
                                                                        if p<=7670 
                                                                            y1(2,i)=19;
                                                                        else
                                                                            if p<=8103
                                                                                y1(2,i)=20;
                                                                            else
                                                                                if p<=8542
                                                                                    y1(2,i)=21;
                                                                                else
                                                                                    if p<=9008
                                                                                        y1(2,i)=22;
                                                                                    else
                                                                                        if p<=9490
                                                                                            y1(2,i)=23;
                                                                                        else
                                                                                            y1(2,i)=24;
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
if y1(2,i)>=b2
    c(j,i)=c(j,i)+1;
end

if x1(i)<=10
    y1(3,i)=24;
else
    y1(3,i)=1;
end
if y1(3,i)>=b2
    c(j,i)=c(j,i)+1;
end

if c(j,i)>=2
    if x1(i)>=b2
        cr(i) = ((ceil(lumda(j)*b2/(2*c(j,i)-2))-1)*r2+b2)/b2;
    else
        if x1(i)<=ceil(lumda(j)*b2/(2*c(j,i)-2))-1
            cr(i) = r2;
        else
            cr(i) = ((ceil(lumda(j)*b2/(2*c(j,i)-2))-1)*r2+b2)/x1(i);
        end
    end
else
    if x1(i)>=ceil(b1*(4-2*c(j,i))/lumda(j))
        cr(i) = (ceil(b1*(4-2*c(j,i))/lumda(j))-1+b1)/b2;
    else
        if x1(i)>=b2
        cr(i) = x1(i)/b2;
        else
            cr(i)=1;
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
legend('3 Perfect Predictions','2 Perfect Predictions and Prediction 1','1 Perfect Prediction and Prediction 1,2','Prediction 1,2,3','Best Deterministic','Location','northoutside');
set(gca,'XTick',[1 2 3 4 5 6 7 8 9 10]);
set(gca,'XTickLabel',[0.1 0.2 0.3 0.4 0.5 0.6 0.7 0.8 0.9 1]);
%The reason why we change the label is: in the code, we set \lumda to be
%an 1*10 matrix whose values are 0.1,0.2,...,1. 
%In the plot our output is a matrix so the x axis has to be 1 to 10. 
%The \lumda corresponding to that is 0.1 to 1.