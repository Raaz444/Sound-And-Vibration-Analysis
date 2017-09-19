[Pxy,f]=cpsd(frc,accel,window1,samplingfrequency);
figure
semilogy(K(1:length(Pxy)),(abs(Pxy)));
xlabel('frequency (hz)')
ylabel('magnitude (dB)')
axis([5 500 -100 100])
title('cross spectral density')