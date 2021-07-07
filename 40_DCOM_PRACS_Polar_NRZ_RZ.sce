//YASH PUJARI
//40 TE EXTC
//POLAR NON RETURN TO ZERO AND RETURN TO ZERO
clc;
clear all;
x=input("Enter the Input Sequence(binary)")
L=length(x)  
M=2*L;  //expand
j=1;
ypnrz=[];  //create array 
yprz=[];
y1=[];
for i=1:L  //limits
    if(x(i)==1)  //only 1 input
        yprz(j)=x(i);  
        yprz(j+1)=0; 
        y1(i)=1;
        j=j+2;
    else  //only 0 input
        yprz(j)=-1;
        yprz(j+1)=0;
        j=j+2;  //gap
        y1(i)=-1;  //bec polar
end
end
for i=1:L
    ypnrz=[ypnrz y1(i) y1(i)]
end
ypnrz(M+1)=0;  //to make the axis 0 in the end
yprz(M+1)=0;
t=0:1:M
subplot(2,1,1)
a=gca(); // Handle on axes entity
a.x_location = "origin";
a.y_location = "origin";
plot2d2(t,[ypnrz],style=[color("violet")]);
xlabel("Time ","fontsize",2,"color","red");
ylabel("Polar non return to Zero ","fontsize",2,"color","Blue");
subplot(2,1,2)
a=gca(); // Handle on axes entity
a.x_location = "origin";
a.y_location = "origin";
plot2d2(t,[yprz],style=[color("orange")]);
xlabel("Time ","fontsize",2,"color","red");
ylabel("Polar return to Zero ","fontsize",2,"color","Blue");
