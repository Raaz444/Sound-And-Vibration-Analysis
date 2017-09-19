figure
tr=tf([0 1 0],[Ma C_value K_value]);
grid on
nyquist(tr);
xlabel('real part');
ylabel('imaginary part');
title('nyquist plot for mobility');