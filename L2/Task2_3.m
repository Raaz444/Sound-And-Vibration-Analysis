clc;
clear all;
close all;
load ass2_signal3.mat;
f=[0:length(x)-1]*fs/length(x);
[pwx1] = pwelch(x, hanning(4096), [50], 4096, fs);
[pwx2] = pwelch(x, hanning(8192), [50], 8192, fs);
f1=0:fs/4096:250;
f2=0:fs/8192:250;
figure(1),semilogy(f1,pwx1(1:513),'k');
xlabel('frequency hz')
ylabel('power spectrum density dB rel((m/s^2))/hz')
title('power spectral density')
hold on;
figure(1),semilogy(f2,pwx2(1:1025),'r');
b=fir1(48,[130/1000 200/1000]);
x1=filter(b,1,x);
y1=abs(fft(x1)/length(x));
f=[0:length(x1)-1]*fs/(length(x1));
rms(x1);
figure,plot(f1,pwx1(1:513),'k');
axis([100 250 0 6*10^-4]);
hold on;
plot(f2,pwx2(1:1025),'r');
area=trapz(pwx2);
xlabel('frequency hz');
ylabel('power spectrum density dB rel((m/s^2))/hz');
title('power spectral density for filtered signal');