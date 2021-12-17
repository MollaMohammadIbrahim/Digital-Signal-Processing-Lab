Fs = 1000;
T = 1/1000;
t = 0:T:1*.5;
x = sin(2*pi*50*t) + sin(2*pi*120*t);
subplot(3,3,1);
plot(x);
title("X wave");

%creating random noise
y = x + 2*randn(size(t));

subplot(3,3,2);
plot(y);
title("Noised Wave");

%plot from sheet
subplot(3,3,3);
plot(1000*t(1:50),y(1:50));
title("Sheet");

%calculating fft
yy = fft(y,512);
subplot(3,3,4);
plot(yy);
title("fft");

%Power Spectrum
ps = yy.*conj(yy)/512;
subplot(3,3,5);
plot(ps);
title("Power Spectrun");

% first 257 points (the other 255 points are redundant) on a meaningful
% frequency axis: 
f = 1000*(0:256)/512;
subplot(3,3,6);
plot(f);
title("First 255");
