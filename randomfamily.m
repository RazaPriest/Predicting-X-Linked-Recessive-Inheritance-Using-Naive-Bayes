clear
clc
p = input('What is the status of male parent: ','s');
s = input('What is the status of the female parent: ','s');
child = 1+randi(3);
x = zeros(1,child);
y = zeros(1,child);
for n = 1:child
    mof = randi(2);
    if (mof==1)
        if (strcmp(s,'yes'))||(strcmp(s,'Yes'))
            person = 1;
        elseif (strcmp(s,'no')||strcmp(s,'No'))
            person = 2;
        elseif (strcmp(s,'carrier'))||strcmp(s,'Carrier')
            person = randi(2);
        end
    elseif (mof==2)
        if (strcmp(s,'yes')||strcmp(s,'Yes'))&&(strcmp(p,'yes')||strcmp(p,'Yes'))
            person=1;
        elseif (strcmp(s,'yes')||strcmp(s,'Yes'))&&(strcmp(p,'no')||strcmp(p,'No'))
            person=3;
        elseif (strcmp(s,'no')||strcmp(s,'No'))&&(strcmp(p,'yes')||strcmp(p,'Yes'))
            person=3;
        elseif (strcmp(s,'no')||strcmp(s,'No'))&&(strcmp(p,'no')||strcmp(p,'No'))
            person = 2;
        elseif ((strcmp(s,'carrier'))||strcmp(s,'Carrier'))&&(strcmp(p,'yes')||strcmp(p,'Yes'))
            a = randi(2);
            if a == 2
                person= 3;
            end
        elseif ((strcmp(s,'carrier'))||strcmp(s,'Carrier'))&&(strcmp(p,'no')||strcmp(p,'No'))
            person = 1+ randi(2);
        end
    end
    y(n) = mof;
    x(n) = person;
end
x = string(x); y = string(y);
a = replace(x,'1','Yes');b = replace(a,'2','No');c = replace(b,'3','Carrier');
d = replace(y,'1','Male');e = replace(d,'2','Female');
child  = [c;e];
t = array2table(child);
disp(t);