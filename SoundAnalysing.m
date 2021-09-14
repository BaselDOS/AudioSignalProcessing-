% Basic filtering using LPF-FIR
%% loading the sound file 
[fileName,path]=uigetfile('*.*','Select the input file');
loc=strcat(path,fileName);
[x,Fs]=audioread(loc);

%% Filter implementation

Fsf=44100; % sampling frequency
Fp=8e3; % Passband frequency [Hz]
Fst=8.4e3; %Stopband frequency [Hz]
Ap=1; %Passband ripple in db
Ast=95; % Stopband attenuation in db

%% Designing the filter
df=designfilt('lowpassfir','PassbandFrequency',Fp,'StopbandFrequency',...
    Fst,'PassbandRipple',Ap,'StopbandAttenuation',Ast,'SampleRate',Fsf);

%% checking the filter
fvtool(df); % Visualize Freq response of the filter

%% adding white gaussian noise to the signal and then filtering it
xn=awgn(x,15,'measured'); %signal corrupted by white Gaussian noise
y=filter(df,xn);
% 15 is our SNR
%% plotting the signals

figure(3)
subplot(3,1,1)
plot(x(1:450));
grid on;
title('Original Signal');
subplot(3,1,2)
plot(xn(1:450));
grid on;
title('Noisy Signal');
subplot(3,1,3)
plot(y(1:450));
grid on;
title('Filtered Signal');

%% we can design our filter using filter designer
% filterDesigner; check if you have the required library















