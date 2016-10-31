% Clair Cunningham  PSWC01  WK10  In-Class Exercises

%% In-Class Exercise #1
% Print value of pi in different formats using fprintf
clc; close all; clear all;
fprintf('Floating point format: %f\n',pi);
fprintf('Floating point format: %6.2f\n',pi);
fprintf('Floating point format: %0.16f\n',pi);
fprintf('Floating point format: %8.16f\n',pi);
fprintf('Floating point format: %i\n',pi);
fprintf('Floating point format: %i\n',7);
fprintf('Floating point format: %12.4e.\n',10*pi);
fprintf('Floating point format: %12.4e.\n',-100*pi);

%% In-Class Exercise #2
% Repeat ICE#9 from last week, but use fprintf for output
%Evaluate the ratio A/B where A and B are double sums
clc;clear all; close all;
%Obtain the number of iterations;
n = input('Please enter the number of iterations ');
%Initialize variables
A = 0;
B = 0;
%For a Double loop to calculate sum A
for j = 1:n
    for i = 1:j
        A = A + i*j^2;
    end
    %Calculates sum B using only the first for loop
    B = B + j^3 + j^4;
end
ratioAB = A/B;
%formatted output
fprintf('For n=%i, the results are: A=%i and B=%i.\nThe ratio A/B=%0.4f.\n',n,A,B, ratioAB);

% The ratio comes out to always be 0.5 despite any change in the sums.

%% In-Class Exercise #3
% Create two arrays a&b containing integers from 1 to 20
% Find the integer numbers where pythagoreans thereom is satisfied.
clc; close all; clear all;
%Initialize Variables
a = [1:20];
b = [1:20];
num = 1;
count = 0;
for ai = 1:20
    for bj = 1:20
        c(num) = sqrt(a(ai)^2+b(bj)^2);                
        if c(num)==fix(c(num))
            count = count+1;
            intabc(1,count) = a(ai)^2;
            intabc(2,count) = b(bj)^2;
            intabc(3,count) = c(num)^2;
        end
        num = num +1;
    end
end
num = num - 1;
fprintf('Output table for a^2 + b^2 = c^2\n');
fprintf('================================\n');
fprintf('   a^2        b^2        c^2\n');
fprintf('--------------------------------\n');
fprintf('%6i %10i %10i\n',intabc);
fprintf('================================\n');

%% In-Class Exercise #4
%Repeat the matrix of #3, but write to a file

% Create two arrays a&b containing integers from 1 to 20
% Find the integer numbers where pythagoreans thereom is satisfied.
clc; close all; clear all;
%Initialize Variables
a = [1:20];
b = [1:20];
num = 1;
count = 0;
for ai = 1:20
    for bj = 1:20
        c(num) = sqrt(a(ai)^2+b(bj)^2);                
        if c(num)==fix(c(num))
            count = count+1;
            intabc(1,count) = a(ai)^2;
            intabc(2,count) = b(bj)^2;
            intabc(3,count) = c(num)^2;
        end
        num = num +1;
    end
end
num = num - 1;

fid = fopen('Cunningham_PSWC01_Wk10_ICE10.xls','w');
% use fprintf to write into file
fprintf(fid,'Output table for a^2 + b^2 = c^2\n');
fprintf(fid,'===================================\n');
fprintf(fid,'a^2 \tb^2 \tc^2\n');
fprintf(fid,'-----------------------------------\n');
fprintf(fid,'%6i \t%10i \t%10i\n',intabc);
fprintf(fid,'===================================\n');
% close file
fclose(fid);

%% In-Class Exercise #5
% See PSWCStats.m function

%% In-Class Exericse #6
% Define anonymous function "parabola" and plot function using fplot
% Define function
clear all; close all; clc
%initialize variables
a = 2; b = 1; c = -2;

parabola = @(x) a*x.^2 + b*x + c;

% plot function
fplot(parabola,[-10 10]);
title('Function plot of parabola(x)');
grid on

%% In-Class Exercise #7
% Numerical Integration of (sin x)^2
clc; clear all ; close all;

%initialize variables
a = 0; b = pi;
n = 6;

h = (b-a)/n;
x = linspace(0,pi,n+1);
y = sin(x).^2;

%calculate integral
A = (h/2) * (2*sum(y)-y(1)-y(n));

%calculate percent error
I = pi/2;
pcterr = (A-I)/I*100;

%output
fprintf('Numerical integration result =%10.6f, percent error =%8.4f%%\n',A,pcterr)

% use trapz function
A2 = trapz(x,y);
fprintf('Matlab trapz(x,y) result =%10.6f\n', A2);