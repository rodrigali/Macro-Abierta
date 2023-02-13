%%operaciones 
%{
2+2;
b=[5 3 3.14]; %Vector
A=[4 6 7; 16 11 15; 2 3 4] %matriz
C= 5*A
Ainv = inv(A) %inversa
detA= det(A) % determinante de una matriz
Atrans = A' %transpuesta
%clear borra todo lo de workspace
%clc borra command windows
%}
%{SFSSFDSGDGGDDGDGDGDGDGDGDDG%}

syms theta b  k h dy dr c cy P M dC0 dT0 dt dTR0 dI0 dG0 dM dP
A=[-theta -b; k -h];
%x=[dy dr]'
B=[-1 -c cy -c -1 -1 0 0; 0 0 0 0 0 0 1/P -M/P^2];
Y= [ dC0 dT0 dt dTR0 dI0 dG0 dM dP ]';

detA = det(A);
A_= [-h b; -k -theta];
%Ainv = inv(A)
J=A_*B;
x= 1/detA * J * Y;

%x(1) % develve e vector renglon 

dy= x(1)
dr= x(2)

%%Algoritmo de decision 
