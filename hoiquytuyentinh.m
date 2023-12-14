function [a1,a0,r2, ketquadudoan] = hoiquytuyentinh(mangX,mangY,giatriX)
%UNTITLED2 Summary of this function goes here
%   Detailed explanation goes here
n = length(mangX);
sumX = 0;
sumY = 0;
sumXY = 0;
sumX2 = 0;
st = 0;
sr = 0;
sumX = sum(mangX);
sumY = sum(mangY);
for i =1:n
    sumXY = sumXY + mangX(i)*mangY(i);
    sumX2 = sumX2 + mangX(i)*mangX(i);
end
xm = sumX/n;
ym = sumY/n;
a1 = (n*sumXY - sumX*sumY)/(n*sumX2 - sumX*sumX);
a0 = ym - a1*xm;

for i =1:n
    st = st +(mangY(1)-ym)^2;
    sr = sr +(mangY(i) -a1*mangX(i)-a0)^2;
end
r2 = (st-sr)/st;
ketquadudoan = a0+a1*giatriX;
end