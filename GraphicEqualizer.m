%% Graphic Equalizer
%input Audio signal ->[[ 32 64 125 250 500 1k 2k 4k 8k 16k],[-20
%db,+20db]]->output audio signal

deviceReader=audioDeviceReader('Driver');
