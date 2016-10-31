%Clair Cunningham PSWC-01   Week8 In-Class Exercises

%% In-Class Exercise #1
% Inputs radius 
% Calculates the volume and surface area of a sphere

%Input
r = input('Enter some radii for a sphere : r, in ft = ');
%Calculate Volume
vol = 4/3*pi.*r.^3;
%Calculate surface area
s_area = 4*pi.*r.^2;

%Output Results
msg = ['Volume of sphere is ' num2str(vol) ', and the surface area is ' num2str(s_area)];
disp(msg)

%% In-Class Exercise #2
% Creates an array of x with corresponding y values
% Plots the resulting arrays
close all; clear all; clc
x = [0:0.5:10];
y = x.^3;

figure(1);
hold on;
plot(x,y);
xlabel('X', 'FontSize', 20, 'FontName', 'Arial');
ylabel('Y', 'FontSize', 20, 'FontName', 'Arial');
title('X vs. Y', 'FontSize', 28, 'FontName', 'Arial');
hold off;

%% In-Class Exercise #3
% Plots two x vs y plots on the same figure

clc; clear all; close all
X=0:2*pi/40:2*pi;
Y=sin(X);
plot(X,Y,'ro')
hold on

Y=cos(X);
plot(X,Y,'b+')
legend('sin','cos')
xlabel('X'); ylabel('Y');
title('sin(x) and cos(x) on one graph')
grid on

%% In-Class Exercise #4
% Plots two vertical (y) axes
close all; clear all; clc
x = [0:0.01:20];
y1 = 200*exp(-0.05*x).*sin(x);
y2 = 0.8*exp(-0.5*x).*sin(10*x);

[AX,H1,H2] = plotyy(x,y1,x,y2);
legend('Low Frequency','High frequency')
xlabel('X');
grid on
set(get(AX(1),'Ylabel'),'String','Y') 
set(get(AX(2),'Ylabel'),'String','Y','Rotation',270) 

%% In-Class Exercise #5
% Creates Multiple Plots
close all; clear all; clc
year=[2007:2011];  %note: increment defaults to 1 if omitted
pop=[0.9 1.4 1.7 1.3 1.8];

subplot(2,2,1);
bar(year,pop); 
title('bar'); xlabel('Year'); ylabel('Population')

subplot(2,2,2);
barh(year,pop); 
title('barh'); xlabel('Year'); ylabel('Population')

subplot(2,2,3);
area(year,pop); 
title('area'); xlabel('Year'); ylabel('Population')

subplot(2,2,4);
plot(year,pop,'-rs','MarkerSize',10); 
title('line'); xlabel('Year'); ylabel('Population'); grid on

%% In-Class Exercise #6
% Create multi-pane plot
close all; clear all; clc
%Calcs for plot 1
t= [0:0.5:6.5];
x = cos(t).^3;  y = sin(t).^3;

%Calcs for plot 2
theta = [0:pi/30:2*pi];
r2 = 2 + cos(theta);

%Calcs for plot 3
r3 = 4.*cos(theta)-1./cos(theta);

%Calcs for plot 4
r4 = exp(theta);

%Plot 1
subplot(2,2,1);
plot(x,y);
xlabel('x(t)'); ylabel('y(t)');
set(get(gca,'YLabel'),'Rotation',0.0);
title('Plot 1');
%Plot 2
subplot(2,2,2);
polar(theta,r2);
title('Plot 2');
%Plot 3
subplot(2,2,3);
polar(theta,r3);
title('Plot 3');
%Plot 4
subplot(2,2,4);
polar(theta,r4);
title('Plot 4');

%% In-Class Exercise #7
% Show the infinite series converges to the value shown
% Inputs the number of times to run the sum
close all; clear all; clc
for t = 1:3
n = input('Please input the number of terms you would to sum : ');
% Splits the total number into an array with spacing 1 between numbers
k = [0:1:n];
% Finds the individual summation of each element in the array
Summ = (-1).^k*1./(2.*k+1);
% Finds the total sum of the array.
total(t) = sum(Summ);
Message(t) = {['The summation of ' num2str(n) ' terms is ' num2str(total(t))]};
end
for t = 1:3
msgbox(Message(t));
end

%% In-Class Exercise #8
% Plots the area of the geometrical shapes
% Creates an array of 10 evenly spaced values between 1 and 2
close all; clear all; clc
a = linspace(1,2,10);
as = a.^2;
ac = pi/4.*a.^2;
at = (sqrt(3)/4).*a.^2;
y = linspace(1,2,10);
figure(1); plot(a,as,a,ac,a,at);hold on;

xlabel('a');ylabel('Area'); title('Area vs. change in a');
legend('Area of Rectangle', 'Area of a Circle', 'Area of a traingle','Location','NorthEastOutside')