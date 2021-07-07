//DFT
//SHUBHANGI KATARIYAR
//BATCH B
//ROLL NO: 21
clc;
clear;

x=input("Enter Sequence of x[n]:");
disp(x)
N1=length(x);

N2=ceil(log(N1)/log(2));
disp(N2)
N=2^N2;
disp(N)
z=zeros(1,N-N1);
x1=[x z];
disp(x1)

for k=0:N-1
    for n=0:N-1
        W1(k+1,n+1)=cos((2*%pi*n*k)/N)-%i*sin((2*%pi*n*k)/N);
    end
end

W=clean(W1)
disp(W);
disp(x1.')
X=W*x1.';
disp(X)
