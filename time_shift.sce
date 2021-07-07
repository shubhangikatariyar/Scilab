//TIME SHIFT PROPERTY
//SHUBHANGI KATARIYAR
//BATCH B
//ROLL NO: 21
clc;
clear;

x=input("Enter Sequence x[n]");
l=input ("Enter how much sample have to be shifted :")

N1=length(x);

N2=ceil(log(N1)/log(2));

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

X1=W*x1.';
disp('Before shifting ')
disp(X1)
for k=0:N-1
    X2(k+1,1)=X1(k+1,1)*exp((-%i*%pi*k*2*l)/N); //changed
  
end

X2=clean(X2)
disp('After  shifting ')
disp(X2)
