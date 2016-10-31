%Clair Cunningham  PSWC_01  Final-Exam

%% Problem #1
% Create and plot x&y coordinates for the "tracktrix" curve
% a = 2 tmax = 8
clear all; close all; clc;
%Initialize variables
a = 2;
tmax = 8;
t = linspace(2,tmax,40);
% Caluclate X and Y
x = a.*(t-tanh(t));
y = a./cosh(t);

figure(1);
plot(x,y); xlabel('Owner Distance from Start'); ylabel('Dog Distance from Owner');
title('Tractrix Curve');

%% Problem #2
% Calculate and Output the volume of pellets as a function of z.
clear all; close all; clc;

%Initialize Variables and obtain needed input
d = input('Please input the depth to evaluate d at: ');
div = input('Input the number of points you want to evaluate d at at: ');
count = 1;
vtot = [0:div]; vcone = [0:div]; vcyl = [0:div];
vtot(count) = 0; vcone(count) = 0; vcyl(count) = 0;
% For loop to evaluate z at the given number of points to a certain depth
for z = linspace(0,3*d,div)
    %Error check to make sure for loops runs for the given number of points;    
    % Volume evaluated for cone
    count = count + 1;
    if z<=d        
        vcone(count) = (pi/12)*z^3;
        vcyl(count) = 0;        
    % Volume evaluated for cylinder.
    else
        vcone(count) = 0;
        vcyl(count) = (pi/4)*z^3*d;        
    end
    vtot(count+1) = vtot(count) + vcyl(count) + vcone(count);
end
%Reformat z into an array
z = linspace(0,3*d,div);
%Formatted output
fprintf('The total volume as the depth is increased\n');
fprintf('==========================================\n');
fprintf(' V        Z\n');
fprintf('%0.3f\n ',vtot,z);