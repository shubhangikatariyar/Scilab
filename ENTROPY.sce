//MERLIN TOMY
//29

clear all; close
p = [0:0.001:1];
hx = -p.*log2(p) - (1-p).*log2(1-p);
plot2d(p,[hx],style=[color("green")]);
xlabel('Probability, p');   //label
ylabel('H(X)');
title('Entropy versus Probability');
