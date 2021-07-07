//Linear Convolution
//SHUBHANGI KATARIYAR
//BATCH B
//ROLL NO. 21
clc;
clear all;
x=input("Enter Sequence of x[n]:");
h=input("Enter Sequence of h[n]:");
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
A=length(y)  //lenght of y
end;
end;
disp("y=", y)


    t=0:1:N-1;
   // subplot(2,2,1)
    a=gca()
    a.y_location="origin";  //for y-axis
   // plot2d3(t,[x1],style=[color("red")]);
    xlabel("Value of n")
    ylabel("Value of x[n]")
    
    r=0:1:M-1;
   // subplot(2,2,2)
    a=gca()
    a.y_location="origin";
   // plot2d3(r,[h],style=[color("blue")]);
    xlabel("Value of n")
    ylabel("Value of h[n]")
    
    
    s=0:1:A-1           // for x-axis
   // subplot(2,2,3.5)
    a=gca()
    a.y_location="origin";
   // plot2d3(s,[y],style=[color("green")]);
    xlabel("Value of n")
    ylabel("Value of y[n] for Linear Convolution")
    
