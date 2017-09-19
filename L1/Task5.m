figure
v=-H./((2*pi*f));
plot(f,20*log10(abs(v)),'g');
grid on;
title('Flexibility');
xlabel('Frequency (Hz)');
ylabel('magnitude(m/N)');
axis([0 300 -120 0]);