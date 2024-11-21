
// Amt of Info

clear all; close
p = [0:0.001:1];
Ix = -log2(p);  // Formula for amount of information

hx = -p.*log2(p) - (1-p).*log2(1-p);  //Formula for entropy


subplot(2,1,1)
plot2d(p,[Ix],style=[color("green")]);
xlabel('Probability, p',"fontsize",3,"color","blue");
ylabel('Amount of Information Is(X)',"fontsize",3,"color","blue");
title('Amount of Information ',"fontsize",5);


subplot(2,1,2)
plot2d(p,[hx],style=[color("red")]);
xlabel('Probability, p',"fontsize",3,"color","blue"); 
ylabel('H(X)',"fontsize",3,"color","blue");
title('Entropy versus Probability',"fontsize",5);
