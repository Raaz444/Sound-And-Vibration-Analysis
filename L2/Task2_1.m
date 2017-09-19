clc;
clear all;
close all;
load('ass2_signal1');
a=x;
l=0:length(a)-1;
deltaf=fs/length(a);
Res=l*deltaf;
figure;
plot(Res,a);
grid on
xlabel('frequency [fs]');
ylabel('Force [Newton second]');
title('transient signal');
figure;
z=(1/fs).*abs(fft(a));
plot(Res,z,'k ');
title('')
hold on;
n1=2048;
l1=0:n1-1;
dealtaf1=fs/n1;
Res1=l1*dealtaf1;
z1=(1/fs).*abs(fft(a(1:n1)));
plot(Res1,z1,'m -');
title('Transient Spectrum using fft');
ylabel('Force [Newton second]');
xlabel('Frequency [fs]');
grid on;
legend('N=16384','N=2048');
m=10;
c=20;
k=160000;
s= 1i*2*pi*Res;
disp=(z)./(m*(s.^2)+(c.*s)+k);
figure
plot(Res,abs(disp),'b');
grid on
xlabel('frequency(hz)');
ylabel('displacement(m)');
title('Displacement spectrum');