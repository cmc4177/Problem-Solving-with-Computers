% Clair Cunningham  PSWC-01  Week7  In-Class Exercises

%% In-Class Exercise #1
% Solves a problem using basic math functions
% Initialize Variables a through d
a = 15.62;
b = -7.08;
c = 62.5;
d = 0.5*(a*b-c);
% Calculate values
Calc = a + (a*b*(a+d)^2)/(c*sqrt(abs(a*b)));
%Write Message
messagebox = ['The value of the calculated value is ' num2str(Calc)];
disp(messagebox)

%% In-Class Exercise #2
% Solves a problem usnig basic math functions
% Initialize Variables x and z
x = 9.6;
z = 8.1;
% Calculate values
Calc2 =  (443*z)/(2*x^3)+ exp(-x*z)/(x+z);
%Write Message
messagebox2 = ['The value of the caclulated value is ' num2str(Calc2)];
%Output Message
disp(messagebox2)

%% In-Class Exercise #3
% Inputs radius 
% Calculates the volume and surface area of a sphere

%Input
r = input('Enter the radius of the sphere : r = ');
%Calculate Volume
vol = 4/3*pi*r^3;
%Calculate surface area
s_area = 4*pi*r^2;

%Output Results
msg = ['Volume of sphere is ' num2str(vol) ', and the surface area is ' num2str(s_area)];
disp(msg)