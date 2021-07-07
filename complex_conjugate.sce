//COMPLEX CONJUGATE
//SHUBHANGI KATARIYAR
//BATCH B
//ROLL NO: 21
clc;
clear;

x1=input("Enter Sequence 1 x[n]");
x2=input("Enter Sequence 2 x[n]");
disp('input signal is ')
x3=x1+%i*x2; //
disp(x3)
N1=length(x3);
N2=ceil(log(N1)/log(2));
N=2^N2;
z=zeros(1,N-N1);
x4=[x3 z];
for k=0:N-1
    for n=0:N-1
        W1(k+1,n+1)=cos((2*%pi*n*k)/N)-%i*sin((2*%pi*n*k)/N);
    end
end
W=clean(W1)
disp(W);

X3=W*x4.';
disp('DFT of input signal is ')
disp(X3)
N2=length(X3)
X4=X3;
temp=0;
for k=1:N2*0.5  //to reverse
    temp=X4(k+1);
    X4(k+1)=X4(N2+1-k);
    X4(N2+1-k)=temp;  //x4 reverse
end
disp('Complex conjuagte of  input signal')
disp(conj(x3))
disp('DFT of complex conjuagte of  input signal')
x8=conj(x3);
X7=W*x8.';  //dft
disp(X7)
disp(' DFT of complex conjugate of input signal is equal to time')
disp('reveral of complex conjugate dft of input signal  ')
disp(conj(X4))  //dft of reversal
X5=(X3+ conj(X4))*0.5;
X6=(X3- conj(X4))*-%i*0.5;
disp('DFT of input signal 1')
disp(X5)
disp('DFT of input signal 2')
disp(X6)
