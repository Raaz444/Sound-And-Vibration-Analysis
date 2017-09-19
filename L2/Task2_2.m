clc;
clear all;
close all;
load('ass2_signal2.mat');
L = length(x);
n_1 = 4096;
n_2= 8192;
k_1 = 0:n_1-1;
k_2 = 0:n_2-1;
f_1 = k_1*fs/n_1;
f_2= k_2*fs/n_2;
window_1 = flattopwin(n_1);
window_2=flattopwin(n_2);
q_1= n_1/sum(window_1);
q_2=n_2/sum(window_2);
block1 = L/n_1;
block2=L/n_2;
f1=n_1/2;
f2=n_2/2;
x1(1,:) = x(1:n_1).*window_1;
x2(1,:)=x(1:n_2).*window_2;
for i = 1:block1-1
x1(2*i+1,:) = x(i*n_1+1:(i+1)*n_1).*window_1;
x1(2*i,:) = x((2*i-1)*f1+1:(2*i+1)*f1).*window_1;
end
[m,n]=size(x1);
for j = 1:m
y1(j,:) = (abs(fft(q_1*x1(j,:)/n_1))).^2;
end
for k = 1:block2-1
x2(2*k+1,:) = x(k*n_2+1:(k+1)*n_2).*window_2;
x2(2*k,:) = x((2*k-1)*f2+1:(2*k+1)*f2).*window_2;
end
[p,q]=size(x2);
for l = 1:p
y2(l,:) = (abs(fft(q_2*x2(l,:)/n_2))).^2;
end
p1 = 2*sum(y1)/block1;
p2=2*sum(y2)/block2;
rms1 = sqrt(p1);
rms2=sqrt(p2);
figure
plot(f_1,rms1,'k');
hold on
plot(f_2,rms2,'r');
axis([0 100 0 10*10^-3]);
xlabel('frequency Hz');
ylabel('RMS value');
title('rms spectrum');
legend('black(n=4096)','red(n=8192)');
b=fir1(32,[2*(56/fs) 2*(60/fs)]);
r=filter(b,1,x);
filteredrms=rms(p)
rmsvalue=rms(r);
figure
plot([0:L-1]*fs/L,abs(fft(r))/L);
title('filtered signal');
ylabel('magnitude of the filter');
xlabel('frequency in hz');