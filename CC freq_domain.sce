//CC Frequency Domain
//SHUBHANGI KATARIYAR
//BATCH B
//ROLL NO: 21
clc;
clear;

x1=input("Enter Sequence x1[n]");
x2=input("Enter Sequence x2[n]");
disp(x1)
disp(x2)


for k=0:3
    for n=0:3
        W1(k+1,n+1)=cos((2*%pi*n*k)/4)-%i*sin((2*%pi*n*k)/4);
    end
end

W=clean(W1)
disp(W);

X3=W*x1.'; //x(k)) dft
X4=W*x2.';


//cicular convolution 



    H=zeros(4,4)  
    H(1:4,1)= x2' 
    for k=2:4  
        x2=[x2(1,4) x2(1,1:4-1)]  //changing x2
        H(:,k)= x2' //columns convert
    end
    
    y=x1*H';  
    disp('circular Convolution of input signals  ' )
    disp(y);
   X6=W*y.';
   disp('DFT of circular Convolution of input signals  ' )
   disp(X6)
    
disp('DFT of input 1' )
disp(X3)
disp('DFT of input 2' )
disp(X4)
X5=X3.*X4;
disp('DFT of input 1 multiplied by input 2' )
disp(X5)


