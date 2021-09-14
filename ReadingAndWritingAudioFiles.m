
%% Reading sounds
[y,Fs]=audioread('C:\Users\manso\Desktop\work\MATLABPractice\soundpracticing\sounds\Plucked and Struck Acoustic Strings\pno-cs.wav');

%% cutting the sound if needed

samples=[1,10*Fs]; %Getting the number of samples for 10 seconds
[yc,Fs]=audioread('C:\Users\manso\Desktop\work\MATLABPractice\soundpracticing\sounds\Plucked and Struck Acoustic Strings\pno-cs.wav',...
    samples); %reading the audio for just 10 seconds

%% playing the sound
sound(y,Fs);

%% plotting the sound
plot(y);
grid on;

%% playing the cutted soung
sound(yc,Fs);

%% writing new sound file or editing the sound's file

audiowrite('C:\Users\manso\Desktop\work\MATLABPractice\soundpracticing\sounds\Plucked and Struck Acoustic Strings\pno-cs-cropped.wav',...
    yc,Fs); % writing new sound file using new sound and sampling frequency
%% comparing between play and sound commands

% play command cannot play arrays 
playObj=audioPlayer(y,Fs); % declaring audioPlayer object
play(playObj);
pause(playObj);
resume(playObj);
stop(playObj);


























