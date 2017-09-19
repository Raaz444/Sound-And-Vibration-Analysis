clc;
clear all;
close all;
load('trail1lab3.mat');
output=data(:,2);
input=data(:,1);
accel=output./5.1*10^-3;
frc=input./22.4*10^-3;
figure
plot(time,frc,'m');
xlabel('Time[s]');
ylabel('Force [N]');
title('Force Signal in time domain');
figure
plot(time,accel,'k');
xlabel('Time[s]');
ylabel('Acceleration (m/s^2)');
title('Accelaration Signal in time domain');