//Linear Convolution
//SHUBHANGI KATARIYAR
//ROLL N0:21
//BATCH: B
clc;
clear all;
x=[1 7 9 2]
h=[1 2]
disp(x)
disp(h)
L= length(x);
M= length(h);
//Method: Using Direct Concolution Sum Formula
for i= 1:L+M-1
 conv_sum = 0;
 for j = 1:i
 if(((i-j+1) <= M) & (j <= L))
 conv_sum = conv_sum +x(j)*h(i-j+1);
end;
y(i)= conv_sum;
end;
end;
disp("y=", y)

