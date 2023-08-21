%% (c) Rahul Bhadani

%% Loading a sound file from MATLAB default
load handel.mat

filename = 'handel.wav';
audiowrite(filename,y,Fs);
[y,Fs] = audioread('handel.wav');

% playing the sound
sound(y,Fs);


% plot
% time axis
t = 0: 1/Fs: (length(y)-1)/Fs;
figure;
plot(t, y'); 
grid;
ylabel('y[n]');
xlabel('n, samples');