clear;

x = input('enter the first sequence');
h = input('enter the second sequence ');

subplot(2,2,1);
stem(x);
title('x');
subplot(2,2,2)
stem(h);
title('h');

N1 = length(x);
N2 = length(h);

xx = [x,zeros(1,N2)];
hh = [h,zeros(1,N1)];

for i= 1:N1+N2-1
    y(i)=0;
    for j=1:N1
        if(i-j+1 > 0)
            y(i) = y(i) + xx(j)*hh(i-j+1);
        else
        end       
    end
end
subplot(2,2,3);
stem(y);
title('convolution of two signl');
%% convulation sum practise

x = input("Enter first Sequense");
h = input ("Enter second Sequence");

n1 = length(x);
n2 = length(h);

xx = [x,zeros(1,n2)];
hh = [h,zeros(1,n1)];

for i=1:n1+n2-1
    y(i) = 0;
    for j=1:n1
        if(i-j+1>0)
            y(i) = y(i) + xx(j) +hh(i-j+1);
        else
        end
    end
        
end
subplot(3,1,1);
stem(x);
title("Input Signal");

subplot(3,1,2);
stem(h);
title("Second Signal");

subplot(3,1,3);
stem(y);
title("Convolation Sum Signal");
grid on;
%% Convolation Sum Practise
clear;
x = input("1st Sequence of cc");
h = input("2nd Sequence of cc ");

n1 = length(x);
n2 = length(h);

xx = [x,zeros(1,n2)];
hh = [h,zeros(1,n1)];

for i=1:n1+n2-1
    y(i) = 0;
    for j=1:n1
        if(i-j+1>0)
            y(i) = y(i) + xx(j) + hh(i-j+1);
        else
        end
    end
end
stem(y);
title("convolation sum");

%% Sin Wave

Fs = 50000;
T = 1/Fs;
t = 0:T:.001*5;
y =1*sin(2*pi*1000*t);
plot(y);