
//UNIPOLAR NON RETURN TO ZERO AND RETURN ZERO
clc;
clear all;
x=input("Enter the Input Sequence(binary)")
L=length(x) 
y1=[];  //creating array

ynrz=[];
yrz=[];
j=1;
M=2*L;    //expanding length

for i=1:L     //limits
    if(x(i)==1)  //only input 1   
       yrz(j)=1;
       y1(i)=1;
         yrz(j+1)=0;   //half signal equates to zero
         j=j+2;  //inc by 2
    else   //for only 0 input
        yrz(j)=0;
        y1(i)=0;
         yrz(j+1)=0;
         j=j+2;
end
end
for i=1:L
    ynrz=[ynrz y1(i) y1(i)]  //append
end
yrz(M+1)=0;  //m= 2L
ynrz(M+1)=0;  // to bring value on the axis as zero
t=0:1:M
a=gca(); // Handle on axes entity
a.x_location = "origin";
a.y_location = "origin";
subplot(2,1,1)
plot2d2(t,[ynrz],style=[color("violet")]);
xlabel("Time ","fontsize",2,"color","red");
ylabel("Unipolar non return to Zero ","fontsize",2,"color","Blue");
subplot(2,1,2)
plot2d2(t,[yrz],style=[color("orange")]);
xlabel("Time ","fontsize",2,"color","red");
ylabel("Unipolar return to Zero ","fontsize",2,"color","Blue");
