%% define parameters

[name,path]=uigetfile('*.*','Select an input');
loc=strcat(path,name);
[x,Fs]=audioread(loc);
%%
n=length(x); % get the signas length
a=0.8; % gain we want to add
d=2000; %delay we want to add
y=zeros(n+d,1); %inisialize the output signal
xn=padarray(x,[d,0],0,'pre');

for i=(d+1):1:n
    y(i-d,1)=x(i)+a*xn(i-d);
end

%% Flange Effect
% low frequency sin wave as d[n]
x1=x(:,1);
tn=n/Fs;
f=0.25;
t=linspace(0,tn,n);
d=100; %delay factor
modsin=sin(2*pi*f*t);
modsin1=round(d.*modsin')+d;
y1=zeros(n+d,1);
a=0.5;
xn2=padarray(x1,[d,0],'pre');
for j=(d+1):1:n
    y1(i-d,1)=x1(i)+a*xn2(i-modsin1(i-d));
end




















