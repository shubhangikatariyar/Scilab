//SHUBHANGI KATARIYAR
//21 TE EXTC
clc;
clear all;
close ;
clc ;
clf ;
x =[1 0 1 0 0 1 1 0] // input Data Stream

//NRZ

z =0; // S t a r t i n g v a l u e on x a x i s
 for i =1:length(x)

   t =[ z :1:z+1] // S e t of x c o r d i n a t e s f o r c u r r e n t b i t d u r a t i o n

   subplot (2 ,1 ,1)
   a = gca () ;
   a.data_bounds =[0 , -1.5;length(x),1.5]
   a.grid =[1 ,-1]
   title ( "DATA" )

   plot(t ,x(i)) // Pl o t c u r r e n t da ta b i t

   subplot (2 ,1 ,2)
   a = gca () ;
   a.data_bounds =[0 ,-1.5;length(x),1.5]
   a.grid =[1 , -1]
   title ( "NRZ " )

    if( x( i ) ==0)
       plot(t ,0) // Pl o t 0 f o r c u r r e n t b i t d u r a t i o n
    else
       plot(t ,1) // Pl o t 1 f o r c u r r e n t b i t d u r a t i o n
 end
z = z +1 // I n c r e am e n t s t a r t i n g v a l u e on x a x i s by one b i t p e r i o d

end
