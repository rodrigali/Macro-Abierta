%%%%%%%%%%%%% Funcion %%%%%%%%%%%%%%%%%
%{
%señalamos las variables
syms theta I_r X_E EM_E PL_Y PL_r EM_Y K_r K_E X_Yo EM_G K_ro dG dYo dG_M dD dro dro Kro dR

%Sistema de matrices
A = [-theta I_r X_E-EM_E;-PL_Y -PL_r 0;-EM_Y K_r X_E-EM_E-K_E];
B = [-1 -X_Yo EM_G 0 0 0;
    0 0 0  -1 -1 0;
    0 -X_Yo EM_G 0 0 Kro];
y = [dG;dYo;dG_M;dD;dR;dro];

%Resolvemos para A
x = A\B*y;
dy = x(1)
dr = x(2)
dE = x(3)
%}
%% Modelo Dinámico
function islmbp=modelo_islmbp(t,variables);
% Descripción del proceso
y=variables(1);
r=variables(2);
E=variables(3);
%Parámetros
theta = 0.2;
I_r = 0.1;
PL_Y= 0.5;
PL_r=.5;
EM_Y=.5;
K_r=.6;
dY=100;
dr=26;
dR=46;
X_Yo=.6;
X_E=.5;
EM_E=.8;
EM_G=.6;
Kro=.8;
K_E=.7;
dG=60;
dYo=80;
dE=40;
dE_M=60;
dG_M=80;
dD=40;
dro=60;
dE_K=90;


% Ecuaciones diferenciales
dy=(dG*(EM_E*PL_r - PL_r*X_E + K_E*PL_r))/(EM_E*I_r*PL_Y - EM_E*EM_Y*PL_r - EM_E*K_r*PL_Y + I_r*K_E*PL_Y + EM_Y*PL_r*X_E - I_r*PL_Y*X_E + K_r*PL_Y*X_E + EM_E*PL_r*theta + K_E*PL_r*theta - PL_r*X_E*theta) + (dro*(EM_E*Kro*PL_r - Kro*PL_r*X_E))/(EM_E*I_r*PL_Y - EM_E*EM_Y*PL_r - EM_E*K_r*PL_Y + I_r*K_E*PL_Y + EM_Y*PL_r*X_E - I_r*PL_Y*X_E + K_r*PL_Y*X_E + EM_E*PL_r*theta + K_E*PL_r*theta - PL_r*X_E*theta) + (dD*(K_r*X_E - I_r*X_E + EM_E*I_r - EM_E*K_r + I_r*K_E))/(EM_E*I_r*PL_Y - EM_E*EM_Y*PL_r - EM_E*K_r*PL_Y + I_r*K_E*PL_Y + EM_Y*PL_r*X_E - I_r*PL_Y*X_E + K_r*PL_Y*X_E + EM_E*PL_r*theta + K_E*PL_r*theta - PL_r*X_E*theta) + (dR*(K_r*X_E - I_r*X_E + EM_E*I_r - EM_E*K_r + I_r*K_E))/(EM_E*I_r*PL_Y - EM_E*EM_Y*PL_r - EM_E*K_r*PL_Y + I_r*K_E*PL_Y + EM_Y*PL_r*X_E - I_r*PL_Y*X_E + K_r*PL_Y*X_E + EM_E*PL_r*theta + K_E*PL_r*theta - PL_r*X_E*theta) - (EM_G*K_E*PL_r*dG_M)/(EM_E*I_r*PL_Y - EM_E*EM_Y*PL_r - EM_E*K_r*PL_Y + I_r*K_E*PL_Y + EM_Y*PL_r*X_E - I_r*PL_Y*X_E + K_r*PL_Y*X_E + EM_E*PL_r*theta + K_E*PL_r*theta - PL_r*X_E*theta) + (K_E*PL_r*X_Yo*dYo)/(EM_E*I_r*PL_Y - EM_E*EM_Y*PL_r - EM_E*K_r*PL_Y + I_r*K_E*PL_Y + EM_Y*PL_r*X_E - I_r*PL_Y*X_E + K_r*PL_Y*X_E + EM_E*PL_r*theta + K_E*PL_r*theta - PL_r*X_E*theta)

dr=(dD*(EM_E*theta + K_E*theta - X_E*theta - EM_E*EM_Y + EM_Y*X_E))/(EM_E*I_r*PL_Y - EM_E*EM_Y*PL_r - EM_E*K_r*PL_Y + I_r*K_E*PL_Y + EM_Y*PL_r*X_E - I_r*PL_Y*X_E + K_r*PL_Y*X_E + EM_E*PL_r*theta + K_E*PL_r*theta - PL_r*X_E*theta) + (dR*(EM_E*theta + K_E*theta - X_E*theta - EM_E*EM_Y + EM_Y*X_E))/(EM_E*I_r*PL_Y - EM_E*EM_Y*PL_r - EM_E*K_r*PL_Y + I_r*K_E*PL_Y + EM_Y*PL_r*X_E - I_r*PL_Y*X_E + K_r*PL_Y*X_E + EM_E*PL_r*theta + K_E*PL_r*theta - PL_r*X_E*theta) - (PL_Y*dG*(EM_E + K_E - X_E))/(EM_E*I_r*PL_Y - EM_E*EM_Y*PL_r - EM_E*K_r*PL_Y + I_r*K_E*PL_Y + EM_Y*PL_r*X_E - I_r*PL_Y*X_E + K_r*PL_Y*X_E + EM_E*PL_r*theta + K_E*PL_r*theta - PL_r*X_E*theta) + (EM_G*K_E*PL_Y*dG_M)/(EM_E*I_r*PL_Y - EM_E*EM_Y*PL_r - EM_E*K_r*PL_Y + I_r*K_E*PL_Y + EM_Y*PL_r*X_E - I_r*PL_Y*X_E + K_r*PL_Y*X_E + EM_E*PL_r*theta + K_E*PL_r*theta - PL_r*X_E*theta) - (K_E*PL_Y*X_Yo*dYo)/(EM_E*I_r*PL_Y - EM_E*EM_Y*PL_r - EM_E*K_r*PL_Y + I_r*K_E*PL_Y + EM_Y*PL_r*X_E - I_r*PL_Y*X_E + K_r*PL_Y*X_E + EM_E*PL_r*theta + K_E*PL_r*theta - PL_r*X_E*theta) - (Kro*PL_Y*dro*(EM_E - X_E))/(EM_E*I_r*PL_Y - EM_E*EM_Y*PL_r - EM_E*K_r*PL_Y + I_r*K_E*PL_Y + EM_Y*PL_r*X_E - I_r*PL_Y*X_E + K_r*PL_Y*X_E + EM_E*PL_r*theta + K_E*PL_r*theta - PL_r*X_E*theta)
dE=(dD*(K_r*theta - EM_Y*I_r))/(EM_E*I_r*PL_Y - EM_E*EM_Y*PL_r - EM_E*K_r*PL_Y + I_r*K_E*PL_Y + EM_Y*PL_r*X_E - I_r*PL_Y*X_E + K_r*PL_Y*X_E + EM_E*PL_r*theta + K_E*PL_r*theta - PL_r*X_E*theta) - (dG*(EM_Y*PL_r + K_r*PL_Y))/(EM_E*I_r*PL_Y - EM_E*EM_Y*PL_r - EM_E*K_r*PL_Y + I_r*K_E*PL_Y + EM_Y*PL_r*X_E - I_r*PL_Y*X_E + K_r*PL_Y*X_E + EM_E*PL_r*theta + K_E*PL_r*theta - PL_r*X_E*theta) + (dR*(K_r*theta - EM_Y*I_r))/(EM_E*I_r*PL_Y - EM_E*EM_Y*PL_r - EM_E*K_r*PL_Y + I_r*K_E*PL_Y + EM_Y*PL_r*X_E - I_r*PL_Y*X_E + K_r*PL_Y*X_E + EM_E*PL_r*theta + K_E*PL_r*theta - PL_r*X_E*theta) + (dG_M*(EM_G*EM_Y*PL_r - EM_G*I_r*PL_Y + EM_G*K_r*PL_Y - EM_G*PL_r*theta))/(EM_E*I_r*PL_Y - EM_E*EM_Y*PL_r - EM_E*K_r*PL_Y + I_r*K_E*PL_Y + EM_Y*PL_r*X_E - I_r*PL_Y*X_E + K_r*PL_Y*X_E + EM_E*PL_r*theta + K_E*PL_r*theta - PL_r*X_E*theta) - (dYo*(EM_Y*PL_r*X_Yo - I_r*PL_Y*X_Yo + K_r*PL_Y*X_Yo - PL_r*X_Yo*theta))/(EM_E*I_r*PL_Y - EM_E*EM_Y*PL_r - EM_E*K_r*PL_Y + I_r*K_E*PL_Y + EM_Y*PL_r*X_E - I_r*PL_Y*X_E + K_r*PL_Y*X_E + EM_E*PL_r*theta + K_E*PL_r*theta - PL_r*X_E*theta) - (dro*(I_r*Kro*PL_Y + Kro*PL_r*theta))/(EM_E*I_r*PL_Y - EM_E*EM_Y*PL_r - EM_E*K_r*PL_Y + I_r*K_E*PL_Y + EM_Y*PL_r*X_E - I_r*PL_Y*X_E + K_r*PL_Y*X_E + EM_E*PL_r*theta + K_E*PL_r*theta - PL_r*X_E*theta)

%agrupar el vector de datos
islmbp=[dy dr dE]';
