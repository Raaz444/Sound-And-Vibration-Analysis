[Pyx,f] = cpsd(accel,frc,window1,samplingfrequency);
h1 = Pyx./P1;
figure
semilogy(K(1:length(Pyx)),(abs(h1)),'m');
h2 = P2./Pxy;
hold on
semilogy(K(1:length(P2)),(abs(h2)),'g');
xlabel('frequency(hz)')
ylabel('magnitude in dB')
axis([5 500 -10 100])
title('frequency responce function')