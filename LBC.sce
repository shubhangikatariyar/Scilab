clc ;
clear ;

k = input("Enter message length(k)=");
n = input("Enter Block length(n)=");

P = input("Enter matrix")
G = [eye(k,k) P] // Generator Matrix eye=identity matrix
disp ('Generator Matrix G',G )

H=[P;eye(n-k,n-k)]' //Parity Check Matrix
disp (' Parity Check Matrix H',H )

if k==4 then
    All_M = [0 0 0 0;0 0 0 1;0 0 1 0;0 0 1 1;
0 1 0 0;0 1 0 1;0 1 1 0;0 1 1 1;
1 0 0 0;1 0 0 1;1 0 1 0;1 0 1 1;
1 1 0 0;1 1 0 1;1 1 1 0;1 1 1 1]

CodedMat = All_M *G;
elseif k==3 then
     All_D = [0 0 0;0 0 1;0 1 0;0 1 1;
1 0 0;1 0 1;1 1 0;1 1 1;]
CodedMat = All_D *G;
end
CodedMat = modulo( CodedMat ,2); // Convert generated code into binary
disp ('Codevectors Matrix',CodedMat)

//Calculate Hamming Distances
HamDist =sum( CodedMat,"c" ) //Sum over column of values 
disp('Hamming Weights',HamDist );

// Find Minimum Hamming Distance
[row ,col ]= find(HamDist ==0);
HamDist (row ,:) =[];
MinHamDist = min ( HamDist ) // Find Minimum Hamming Distance
disp ('Minimum Hamming Distance',MinHamDist)

// Calculate Error Detection Capability
ErrDetCap = MinHamDist -1;
disp (' Error Detection Capability',ErrDetCap );

//Calculate Error Correction Capability
ErrCorCap =( MinHamDist -1) /2;
disp('Error Correction Capability',ErrCorCap );
