close all;
clear;
clc;

%Read sound files
[x1,Fs1] = audioread("sound/SI1010.WAV.wav");
[x2,Fs] = audioread("sound/SI1384.WAV.wav");
 

%Take same length samples
minLength = min(length(x1), length(x2));
x1 = x1(1:minLength);
x2 = x2(1:minLength);

%Create microphone input/ here with echoes
y1 = 0.3*x1 + 0.7*x2;
y2 = 0.6*x1 + 0.4*x2;
y3 = 0.9*x1 + 0.1*x2;
y4 = 0.2*x1 + 0.8*x2;

y = [y1'; y2'; y3'; y4'];

%Decompose mixed signals 
x = fastICA(y, 2);

%Normalise data to write on audio file
x11 = x(1,:)/(max(abs(x(1,:))))';
x22 = x(2,:)/(max(abs(x(2,:))))';

%Write on audio file
audiowrite('sound/SI1010.NEW.wav',x11,Fs1);
audiowrite('sound/SI1384.NEW.wav',x22,Fs);

v1 = snr(x2',x11);
v2 = snr(x1',x22);

% plot
subplot(5,1,1);
plot(x1);
grid on;
legend("Actual source 1");
subplot(5,1,2);
plot(x2);
legend("Actual source 2");
grid on;

subplot(5,1,3);
plot(y1);
legend("Mixture in mic 1");
grid on;


%Plot estimated original signals
subplot(5,1,4);
plot(x11);
grid on;
legend("Estimated source 1");
subplot(5,1,5);
plot(x22);
grid on;
legend("Estimated source 2");
