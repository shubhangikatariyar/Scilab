//MERLIN TOMY
//29

clear all; close
p = [0:0.001:1];
Ix = -log2(p);  // Formula for amount of information


plot2d(p,[Ix],style=[color("green")]);
xlabel('Probability, p');
ylabel('Amount of Information Is(X)');
title('Amount of Information ');


