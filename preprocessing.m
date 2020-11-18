function [data_filtered,data_rectified,data_enveloped] = preprocessing(data)
% THIS FUNCTION PERFORMS THE PRE-PROCESSING OF THE SIGNAL

% Filtering using a bandpass FIR filter
% Lower cut off freq = 25
% Lower band pass freq = 30
% Higher band pass freq = 450
% Higher cut off freq = 455
% Stopband attenuation = 10
% Sampling rate = 1000
% Ripple = 1

bpFilt =designfilt('bandpassfir', 'StopbandFrequency1', 25, 'PassbandFrequency1', 30, 'PassbandFrequency2', 450, 'StopbandFrequency2', 455, 'StopbandAttenuation1', 10, 'PassbandRipple', 1, 'StopbandAttenuation2', 10, 'SampleRate', 1000);
data_filtered = filtfilt(bpFilt,data);
% h = fvtool(b);  % To plot the magnitude vs frequency analysing of the
                  % filtered signal

% Full wave Rectification of the filtered signal
data_rectified = abs(data_filtered);

% Envelop computation which perfermed using a low pass FIR filter with same
% specifications as before
lpfilt = designfilt('lowpassfir', 'PassbandFrequency', 3, 'StopbandFrequency', 6, 'PassbandRipple', 1, 'StopbandAttenuation', 10, 'SampleRate', 1000);
data_enveloped = filtfilt(lpfilt,data_rectified);

% Downsampling done
data_downsamp = downsample(data_enveloped,100);

end

