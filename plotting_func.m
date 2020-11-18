function [] = plotting_func(sn,EMG_biceps,EMG_triceps,x_cursor,y_cursor,x_target,y_target,EMG_interval,EMG_set,kinem_interval,kinem_set)
%THIS IS HELPER FUNCTION TO PLOT THE DATA AND TO OBSERVE IT

% Pre-processing to get filtered rectified and enveloped signals
[biceps_filtered,biceps_rectified,biceps_enveloped] = preprocessing(EMG_biceps);
[triceps_filtered,triceps_rectified,triceps_enveloped] = preprocessing(EMG_triceps);

% Plotting the signals
figure;
subplot(3,2,1);
hold on
plot( EMG_interval,  EMG_biceps(EMG_set),'b')
plot( EMG_interval,  biceps_filtered(EMG_set),'g')
xlabel('time')
ylabel('Amplitude')
title('Raw and Filtered Biceps')
legend('raw signal','filtered signal')

subplot(3,2,2);
hold on
plot( EMG_interval,  EMG_triceps(EMG_set),'b')
plot( EMG_interval,  triceps_filtered(EMG_set),'g')
xlabel('time')
ylabel('Amplitude')
title(' Raw and Filtered Triceps')
legend('raw signal','filtered signal')

subplot(3,2,3);
hold on
plot( EMG_interval,  biceps_rectified(EMG_set),'b')
plot( EMG_interval,  biceps_enveloped(EMG_set),'g')
xlabel('time')
ylabel('Amplitude')
title('Rectified and Enveloped Biceps')
legend('rectified signal','enveloped signal')

subplot(3,2,4);
hold on
plot( EMG_interval,  triceps_rectified(EMG_set),'b')
plot( EMG_interval,  triceps_enveloped(EMG_set),'g')
xlabel('time')
ylabel('Amplitude')
title('Rectified and Enveloped Triceps')
legend('rectified signal','enveloped signal')

subplot(3,2,5);
hold on
plot( kinem_interval, x_cursor(kinem_set),'b')
plot( kinem_interval, y_cursor(kinem_set),'g')
xlabel('time')
ylabel('Position')
title('Movement signal X and Y in time')
legend('x cursor','y cursor')

subplot(3,2,6);
hold on
plot( x_cursor(kinem_set), y_cursor(kinem_set),'b') ;
plot( x_target(kinem_set), y_target(kinem_set),'.','MarkerSize',25,'MarkerFaceColor','green','MarkerEdgeColor','g');
xlabel('x-position')
ylabel('y-position')
title('The XY movement signal together with target')
legend('xy movement','target')

if sn ==1
    suptitle('Set 1 - First set of no force')
elseif sn ==6
    suptitle('Set 6 - First sets of force field')
elseif sn ==10
    suptitle('Set 10 - Last sets of force field')
elseif sn ==11
    suptitle('Set 11- First set of washout')
end
end

