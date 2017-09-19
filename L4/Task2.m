clc
clear all
close all
load ass4_signal2.mat
p=length(x);
t1=1:p;
trigglevel=0;
z=sign(tacho-trigglevel);
d1=diff(z);
t2=t1(2:end);
tt=t2(find(d1==2));
r=60/1./diff(tt);
n=round(length(x)/95);
window=hann(6640);
for i=1:94
k(i,:)=x((((i-1)*(n))+1):(n+(i-1)*(n))).*window;
q(i,:)=abs(fft(k(i,:)));
end
waterfall(q)
xlim([0 250])
% ylim([1100 5800])
set(gca,'yticklabel',(1100:900:5800))
colormap bone
grid on;
ylabel('Rpm')
xlabel('frequency[Hz]')
zlabel('RMS(m/s2)')
title('Rpm spectralmap')