%% Defining parameters

Fs=44100; %Sampling Frequency ,Default=8192 [Hz]
noc=1; % number of input channels
nob=16; % number of bits per sample, Default=8 [b/Sample]
recObj=audiorecorder(Fs,nob,noc); %Declare recording object;
%% Start recording

record(recObj); % Start recording;\
pause(5); % if we want to record just for 5 seconds ,we can set this parameter as we like
stop(recObj); %stop recording
%% Playing what we have recorded 

play(recObj); % Play back the recording

%% Recording with just one command

recordblocking(recObj,5); %the same operations as in the previous part

%% Getting audio Data

myRecording=getaudiodata(recObj); %Getting the recorded data as array

%% we can analyse it now for example we can plot it 

plot(myRecording);
sound(myRecording,Fs); %Play back the recording at specific frequency

%% recording sounds in two channels
noc=2; %new number of channels
recObj=audiorecorder(Fs,nob,noc); %Redeclare the recording object;
recordblocking(recObj,5); %both channels will be recording
play(recObj); % Play back the recording
myRecording=getaudiodata(recObj); %Getting the recorded data as array
plot(myRecording);

%% Separating th channels

ch1=myRecording(:,1); % separating channel 1
ch2=myRecoring(:,2); %separating channel 2
figure(1);plot(ch1); %plotting channel 1
figure(2);plot(ch2); %plotting channel 2
sound(ch1,Fs); %playing channel 1
sound(ch2,Fs); % playing channel 2


















