s=(2*pi*1i*f);
Ma=0.547;
C_value=24.53;
K_value=7.6450*10^4;
h_s=(1/Ma)./(s.^2+((s*C_value)/Ma)+(K_value/Ma));
h_v=(s/Ma)./(s.^2+((s*C_value)/Ma)+(K_value/Ma));
h_a=(s.^2/Ma)./(s.^2+((s*C_value)/Ma)+(K_value/Ma));
figure
plot(f,20*log10(abs(h_s)),'k',f,20*log10(abs(h_v)),'g',f,20*log10(abs(h_a)),'r');
xlabel('frequency (Hz)');
ylabel('magnitude');
title('Flexibility Mobility and accerlance plots');
legend('flexibilty plot','mobility plot','Accelerance plot');