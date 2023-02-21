%%%%%%%%%%%%% Funcion %%%%%%%%%%%%%%%%%
%{
%señalamos las variables
syms theta I_r PL_Y PL_r EM_Y K_r dY dr dR X_Yo X_E EM_E EM_G K_ro K_E dG_0 dYo dE dE_M dG_M dD dro dE_K

%Sistema de matrices
A = [-theta I_r 0;-PL_Y -PL_r 1;EM_Y K_r 0];
B = [-1 -X_Yo -X_E EM_E EM_G 0 0 0;
    0 0 0 0 0 -1 0 0;
    0 X_Yo X_E -EM_E -EM_G 0 K_ro -K_E];
y = [dG_0;dYo;dE;dE_M;dG_M;dD;dro;dE_K];

%Resolvemos para A
x = A\B*y;
dy = x(1)
dr = x(2)

%}
%% Modelo Dinámico
function islmbp=modelo_islmbp(t,variables);
% Descripción del proceso
y=variables(1);
r=variables(2);
%Parámetros
theta = 0.2;
I_r= 0.5;
PL_Y= 0.6;
PL_r=0.2;
EM_Y=0.3;
K_r = 0.4;
dY=0.6
dr= 0.8
dR =0.5;
X_Yo = 0.5
X_E=0.5;
EM_E= .9;
EM_G= .7;
K_ro =0.5;
K_E=0.4;
dG_0 = 25;
dYo=41;
dE=46;
dE_M=62;
dG_M=96;
dD=23;
dro=10;
dE_K=63;

% Ecuaciones diferenciales
dy=(K_r*dG_0)/(K_r*theta + EM_Y*I_r) - (dG_M*(EM_G*I_r + EM_G*K_r))/(K_r*theta + EM_Y*I_r) - (dE_M*(EM_E*I_r + EM_E*K_r))/(K_r*theta + EM_Y*I_r) + (dE*(I_r*X_E + K_r*X_E))/(K_r*theta + EM_Y*I_r) + (dYo*(I_r*X_Yo + K_r*X_Yo))/(K_r*theta + EM_Y*I_r) - (I_r*K_E*dE_K)/(K_r*theta + EM_Y*I_r) + (I_r*K_ro*dro)/(K_r*theta + EM_Y*I_r)

dr=(dE*(X_E*theta - EM_Y*X_E))/(K_r*theta + EM_Y*I_r) + (dYo*(X_Yo*theta - EM_Y*X_Yo))/(K_r*theta + EM_Y*I_r) - (EM_Y*dG_0)/(K_r*theta + EM_Y*I_r) - (dE_M*(EM_E*theta - EM_E*EM_Y))/(K_r*theta + EM_Y*I_r) - (dG_M*(EM_G*theta - EM_G*EM_Y))/(K_r*theta + EM_Y*I_r) - (K_E*dE_K*theta)/(K_r*theta + EM_Y*I_r) + (K_ro*dro*theta)/(K_r*theta + EM_Y*I_r)

%agrupar el vector de datos
islmbp=[dy dr]';

