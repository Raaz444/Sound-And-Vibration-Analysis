Flex=-H./((2*pi*f).^2);
mobi=H./(2*pi*1i*f);
figure
loglog(f,(abs(Flex)),'g',f,(abs(mobi)),'m',f,(abs(H)),'b');
xlabel('frequency(Hz)');
ylabel('magnitude');
title('Frequency Response function II');
legend('Flexibilty','mobility','Accelerance');