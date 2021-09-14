%% define parameters

[name,path]=uigetfile('*.*','Select an input');
loc=strcat(path,name);
[x,Fs]=audioread(loc);

%%
