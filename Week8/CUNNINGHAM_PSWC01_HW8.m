% Clair Cunningham  PSWC01  Homework #8

%% Problem #1
% Plot the deflection, y, of the beam as a function of distance,x
% Initialize constants
E = 70.0*10^9;
L = 6.0;
I = 9.19*10^(-6);
Wo = 800;
% split equation into two parts
x = linspace(0,6,100);
y = (-Wo.*x./(360*(E*I*L))).*(3.*x.^3-10*L^2.*x.^2+7*L^4);
plot(x,y); xlabel('Distance(m)'); ylabel('Displacement(m)'); title('Deflection of a Beam');

%Max Deflection of Beam is -0.01 meters.

%% Problem #2
% Show the given Euler series approaches pi/4
% Sets the value to approach and sets up arrays with different number of terms
truevalue = pi^2/6;
i10 = [1:10];
i50 = [1:50];
i100 = [1:100];
i200 = [1:200];
%Uses the equation in the summation to solve for each value individually
multi10 = 1./(i10.^2);
multi50 = 1./(i50.^2);
multi100 = 1./(i100.^2);
multi200 = 1./(i200.^2);
%Adds up all value calculated to arrive at the total sum.
sum10 = sum(multi10);
sum50 = sum(multi50);
sum100 = sum(multi100);
sum200 = sum(multi200);
%Calculates percent error.
error10 = (truevalue-sum10)/truevalue*100;
error50 = (truevalue-sum50)/truevalue*100;
error100 = (truevalue-sum100)/truevalue*100;
error200 = (truevalue-sum200)/truevalue*100;
numterms = [10,50,100,200;error10,error50,error100,error200]

%% Problem #3
%Plot the variation of volume versus the variable a
%A controls the change in volume for all three shapes
close all; clear all; clc
a = linspace(1,2,10);
vs = 4/3.*a.^3;
vt = 1/2.*a.^3;
vc = a.^3;
y = linspace(1,2,10);
figure(1); plot(a,vs,a,vc,a,vt);hold on;

xlabel('a');ylabel('Volume'); title('Volume vs. change in a for geometric shapes');
legend('Volume of Cube', 'Volume of a sphere', 'Volume of a triangular prism','Location','North')