[f1,x1]=ksdensity(frc);
[f2,x2]=ksdensity(accel);
figure
plot(x1,f1,'m')
xlabel('frequency [Hz]');
ylabel('Force [N]');
title('APDF for force signal')
figure
plot(x2,f2,'k')
xlabel('frequency [Hz]');
ylabel('Acceleration [m/s^2]');
title('APDF for acceleration signal')