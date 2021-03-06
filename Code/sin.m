%%
Fs = 50000;
T = 1/Fs;
t = 0:T:0.004;
y =2* sin(2*pi*1000*t);
z = 5*y;
subplot(2,2,1);
plot(t,y);
subplot(2,2,2);
stem(t,y);
subplot(2,2,3);
plot(t,z);
%% unit sample sequence/impulse sequence
t = -5:1:5;
y = zeros(t);
y = (t==0);

stem(t,y);
grid on;
%% unit step sequence 
t = -5:1:5;
y = zeros(t);
y = (t>=0);
stem(t,y);

%% Unit ramp 
t = -5:1: 5;
ramp = (t.*(t>=0));
stem(t,ramp);

%% exponensial signal 
t = -5 :-5.7: 5;
a = -1;
expo =  exp(-t);
stem(t,expo);
