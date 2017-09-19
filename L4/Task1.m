clc
clear all
close all
load ass4_signal1.mat
K=length(x);
y=round(K/200);
window=hann(1540);
fft_blocksize=8192;
for i=1:199
k(i,:)=x((((i-1)*(y))+1):(y+(i-1)*(y))).*window;
q(i,:)=abs(fft(k(i,:),fft_blocksize));
end
waterfall(q)
xlim([0 500])
ylim([0 70])
colormap bone
grid on;
xlabel('frequency')
ylabel('time (sec)')
zlabel('magnitude(m/s2)')
title('Time spectral map')