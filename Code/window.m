
Fs = 1000*40;
N = 500;
T = 1/Fs;
t = linspace(0,1,500); % here 500 data point will be shown in one sinosoidal
y = 2*sin(2*pi*10000*t);
subplot(3,3,1);
plot(y);
title("Given Signal");

n = 0:N-1;
hmw = 0.54-0.46*cos( (2*pi*n)/(N-1) );
subplot(3,3,2);
plot(hmw);
title("Hamming Window");

yhmw = hmw.*y;
subplot(3,3,3);
plot(yhmw);
title("hamming * y(n)");

% Rectangular window
rw = ones(1,N);
subplot(3,3,4);
stem (rw);
title("Rectangular Window");
% Multiplying with rectangular window
yrw = y.*rw;
subplot(3,3,5);
plot (yrw);
title("y(n) * rectangular window");

%triangular window
tw = 1 - abs((2*n - N+1)/(N-1));
subplot(3,3,6);
plot(tw);
title("triangular window");

% Multiplying with triangular window
ytw = tw.*y;
subplot(3,3,7);
plot(ytw);
title("y(n)*triangular window");