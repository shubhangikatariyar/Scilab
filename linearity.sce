//LINEARITY PROPERTY
//SHUBHANGI KATARIYAR
//BATCH B
//ROLL NO: 21
clc;
clear;

x=input("Enter Sequence x[n] :");
a=input("Input scaling factor :")
x1=a*x;
disp('Before scaling' )
disp(x)
disp('After  scaling' )
disp(x1)
N1=length(x);

N2=ceil(log(N1)/log(2));

N=2^N2;

z=zeros(1,N-N1);
x2=[x z];
x3=[x1 z];


for k=0:N-1
    for n=0:N-1
        W1(k+1,n+1)=cos((2*%pi*n*k)/N)-%i*sin((2*%pi*n*k)/N);
    end
end

W=clean(W1)  //to roundoff the values
disp(W);
X4=W*x2.';
X5=W*x3.';
disp('Before scaling DFT' )
disp(X4)
disp('After  scaling DFT' )
disp(X5)

