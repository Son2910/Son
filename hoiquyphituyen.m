function [a1,a0, ketquadudoan] = hoiquyphituyen(mangX,mangY,giatriX)
%UNTITLED2 Summary of this function goes here
%   Detailed explanation goes here
n = length(mangX);
sumX = 0;
sumY = 0;
sumXY = 0;
sumX2 = 0;
sumX = sum(mangX);
sumY = sum(mangY);
for i =1:n
    sumXY = sumXY + mangX(i)*mangY(i);
    sumX2 = sumX2 + mangX(i)*mangX(i);
end
A = [sumX2 sumX; sumX  n];
B = [sumXY, sumY];
Z = A.\B;
a0 = Z(1);
a1 = Z(2);
ketquadudoan = a0+giatriX^a1;
end