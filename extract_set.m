function [] = extract_set(sn,EMG_biceps,EMG_triceps,x_cursor,y_cursor,x_target,y_target,EMG_time_points,EMG_events,kinem_time_points,kinem_events)
%A FUNCTION TO EXTRACT SET FOR THE GIVEN INTERVAL

% Total epoch timeline given 
timeline_start = 1:96:1057;
timeline_end = 96:96:1152;
% To select the coressponding timeline interval based on the set number
epoch_start = timeline_start(sn);
epoch_end = timeline_end(sn);

% Selecting the events (cue and go) inorder to segment into sets 
EMG_extract_event = EMG_time_points(EMG_events > 0);
kinem_extract_event=diff((kinem_events  == 2 | kinem_events ==3));
kinem_extract_start = kinem_time_points((kinem_extract_event )< 0);
kinem_extract_end = kinem_time_points((kinem_extract_event) > 0);

if (isempty(EMG_extract_event)==0 && isempty(kinem_extract_start)==0 && isempty(kinem_extract_end)==0)
    % Checking and fiing the interval withing the given span
    EMG_set = EMG_time_points> EMG_extract_event(epoch_start) & EMG_time_points< EMG_extract_event(epoch_end);
    kinem_set = kinem_time_points > kinem_extract_start(epoch_start) &kinem_time_points < kinem_extract_end(epoch_end);               
    EMG_interval = EMG_time_points(EMG_set) - EMG_extract_event(epoch_start);
    kinem_interval = kinem_time_points(kinem_set) - kinem_extract_start(epoch_start);
    
    % Plotting the data for the selected set
    plotting_func(sn,EMG_biceps,EMG_triceps,x_cursor,y_cursor,x_target,y_target,EMG_interval,EMG_set,kinem_interval,kinem_set)

    

end
end

