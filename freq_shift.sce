//FREQUENCY SHIFT
//SHUBHANGI KATARIYAR
//BATCH B
//ROLL NO: 21
clc;
clear;

x=input("Enter Sequence x[n]");
l=input ("Enter how much sample have to be shifted:") 

N1=length(x);

N2=ceil(log(N1)/log(2));

N=2^N2;

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


for k=0:N-1
    x2(1,k+1)=x1(1,k+1)*exp((%i*%pi*k*2*l)/N);
  
end
 disp(x2)
x3=clean(x2)
disp('Before shifting ')
 disp(x)
 disp('DFT before shifting ')
 disp(X)
 disp('After shifting ')
 disp(x3)
 
X2=W*x3.';
 disp('DFT After shifting ')
 
disp(X2)
