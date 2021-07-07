//Circular Convolution OVER LAP ADD / SAVE
//SHUBHANGI KATARIYAR
//BATCH B
//ROLL NO: 21
clc;
clear all;
x=input("Enter Sequence of x[n]:");
h=input("Enter Sequence of h[n]:");
disp(x)
disp(h)
L=length(x);
M=length(h);
    N=max(L,M); //Max Size
    z1=zeros(1,N-L);  //calc no of zeros
    z2=zeros(1,N-M);
    x1=[x z1]  // with zero padding
    h1=[h z2]  // with zero padding
    disp (x1)
    disp (h1)
// Matrix of H
    H=zeros(N,N)  //making matrix of 000000
    H(1:N,1)= h1' //h1' is transpose of h1; range: row from 1 to N and 1st row
    for k=2:N  //new variable
        h1=[h1(1,N) h1(1,1:N-1)] //4th element + rest of the element in seq.
        H(:,k)= h1' //Transpose
    end
    disp(H)
    y=H*x1';
    A=length(y)  //lenght of y
    disp(y);
    

    t=0:1:N-1;
    subplot(2,2,1)
    a=gca()
    a.y_location="origin";
    plot2d3(t,[x1],style=[color("red")]);
    xlabel("Value of n")
    ylabel("Value of x[n]")
    
    r=0:1:M-1;
    subplot(2,2,2)
    a=gca()
    a.y_location="origin";
    plot2d3(r,[h],style=[color("blue")]);
    xlabel("Value of n")
    ylabel("Value of h[n]")
    
    
    subplot(2,2,3.5)
    a=gca()
    a.y_location="origin";
    plot2d3(t,[y],style=[color("green")]);
    xlabel("Value of n")
    ylabel("Value of y[n] for Circular Convolution")
    
    
    
    
