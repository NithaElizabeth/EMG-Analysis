% -------------------------------------------------------------------------
% This project is developed as part of Academic curriculum
% This program is intended to perform pre-processing and then to analyse 
% the EMG data provided on the root folder.
% This is the main script that defines and initiates other functions of this
% project.
% Developed by : Nitha Elizabeth John
% Guided by : Prof. Maura Casadio and Prof. Serena Ricci
%--------------------------------------------------------------------------

clc
clear all;
close all;

%% 1) To load the EMG_data.mat file
load("EMG_data_ANNA");
Fs=1000;        %Sampling Freq is 1000Hz
% Extracting every row (events , biceps and triceps)
EMG_events=double(EMG_data(1,:));
EMG_biceps_raw=double(EMG_data(2,:));
EMG_triceps_raw=double(EMG_data(3,:));
EMG_time_points=(1:size(EMG_data,2))./Fs; 
%% 2) Pre-processing the biceps muscle using the function 
[Biceps_filtered,Biceps_rectified,Biceps_enveloped] = preprocessing(EMG_biceps_raw);
%Pre-processing the triceps muscle using the function 
[triceps_filtered,triceps_rectified,triceps_enveloped] = preprocessing(EMG_triceps_raw);

%% 3) To load the motion data_kinema_ANNA.mat
load("kinem_ANNA");
% Extracting every row (time points, events , x & y cursor and x&y targets)
kinem_time_points=double(kinem_data(1,:));
kinem_events=double(kinem_data(2,:));
x_cursor=double(kinem_data(3,:));
y_cursor=double(kinem_data(4,:));
x_target=double(kinem_data(5,:));
y_target=double(kinem_data(6,:));

%% 4) Extracting different set for the given epoch intervals 
extract_set(1,EMG_biceps_raw,EMG_triceps_raw,x_cursor,y_cursor,x_target,y_target,EMG_time_points,EMG_events,kinem_time_points,kinem_events);
extract_set(6,EMG_biceps_raw,EMG_triceps_raw,x_cursor,y_cursor,x_target,y_target,EMG_time_points,EMG_events,kinem_time_points,kinem_events);
extract_set(10,EMG_biceps_raw,EMG_triceps_raw,x_cursor,y_cursor,x_target,y_target,EMG_time_points,EMG_events,kinem_time_points,kinem_events);
extract_set(11,EMG_biceps_raw,EMG_triceps_raw,x_cursor,y_cursor,x_target,y_target,EMG_time_points,EMG_events,kinem_time_points,kinem_events);
