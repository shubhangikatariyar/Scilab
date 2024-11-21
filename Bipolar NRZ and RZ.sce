

// BIPOLAR NON RETURN TO ZERO AND RETURN ZERO  

clc;
clear all;
x=input("Enter the Input Sequence(binary)")
L=length(x)
y1=[];
ybnrz=[];
ybrz=[];
flag=0;  
j=1;
M=2*L;  //expand
for i=1:L
    if(x(i)==1)
        if(flag==0)
            flag=1;
            ybnrz(i)=1;  
            ybrz(j)=1; 
            ybrz(j+1)=0;  //expand kia toh half krna hai
            j=j+2;
        else
         
          flag=0;  //update flag for transission
          ybnrz(i)=-1;
           ybrz(j)=-1;
           ybrz(j+1)=0;
           j=j+2;
        end
    else
     ybrz(j)=0;
     ybnrz(i)=0;
     ybrz(j+1)=0;
     j=j+2;
    end
end 
ybrz(M+1)=0;
for i=1:L
    y1=[y1 ybnrz(i) ybnrz(i)]  //zero
end
y1(M+1)=0;
t=0:1:M
subplot(2,1,1)
a=gca(); // Handle on axes entity
a.x_location = "origin";
a.y_location = "origin";
plot2d2(t,[y1],style=[color("violet")]);
xlabel("Time ","fontsize",2,"color","red");
ylabel("Bipolar non return to Zero ","fontsize",2,"color","Blue");
subplot(2,1,2)
a=gca(); // Handle on axes entity
a.x_location = "origin";
a.y_location = "origin";
plot2d2(t,[ybrz],style=[color("orange")]);
xlabel("Time ","fontsize",2,"color","red");
ylabel("Bipolar return to Zero ","fontsize",2,"color","Blue");
