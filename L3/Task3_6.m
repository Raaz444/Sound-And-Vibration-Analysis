[Cxy,F] = mscohere(accel,frc,window1,samplingfrequency);
plot(Cxy);
xlabel('frequency(hz)')
ylabel('coherence')
axis([5 500 -5 5])
title('coherence function')