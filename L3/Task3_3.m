samplingfrequency=4166.6667;
df=0.2;
N=samplingfrequency/df;
K=[0:N-1]*0.2;
window1=hann(N);
P1=pwelch(frc,window1);
figure
semilogy(K(1:16385),P1,'r');
xlabel('frequency [Hz]');
ylabel('Force power spectrum [N^2]/hz');
title('psd for force signal')
axis([5 500 -10 10^2])
window2=hann(N);
P2=pwelch(accel,window2);
figure
semilogy(K(1:16385),P2,'k');
xlabel('frequency [Hz]');
ylabel('Acceleration power spectrum [(m/s^2)^2]/hz');
axis([5 500 -10 10^2])
title('psd for acceleration signal')