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
dR= x(3)

%}

%% Modelo Dinámico
function islmbp=modelo_islmbp(t,variables);
% Descripción del proceso
y=variables(1);
r=variables(2);
R=variables(3);
%Parámetros
theta = 0.2
I_r = 0.1
PL_Y= 0.5
PL_r=0.5
EM_Y= 0.4
K_r=0.6
dY=100
dr=500
dR=200
X_Yo=.6
X_E=.5
EM_E=.8
EM_G=.6
K_ro=.8
K_E=.7
dG_0=60
dYo=80
dE=40
dE_M=60
dG_M=80
dD=40
dro=60
dE_K=90


% Ecuaciones diferenciales
dy=(K_r*dG_0)/(K_r*theta + EM_Y*I_r) - (dG_M*(EM_G*I_r + EM_G*K_r))/(K_r*theta + EM_Y*I_r) - (dE_M*(EM_E*I_r + EM_E*K_r))/(K_r*theta + EM_Y*I_r) + (dE*(I_r*X_E + K_r*X_E))/(K_r*theta + EM_Y*I_r) + (dYo*(I_r*X_Yo + K_r*X_Yo))/(K_r*theta + EM_Y*I_r) - (I_r*K_E*dE_K)/(K_r*theta + EM_Y*I_r) + (I_r*K_ro*dro)/(K_r*theta + EM_Y*I_r)

dr= (dE*(X_E*theta - EM_Y*X_E))/(K_r*theta + EM_Y*I_r) + (dYo*(X_Yo*theta - EM_Y*X_Yo))/(K_r*theta + EM_Y*I_r) - (EM_Y*dG_0)/(K_r*theta + EM_Y*I_r) - (dE_M*(EM_E*theta - EM_E*EM_Y))/(K_r*theta + EM_Y*I_r) - (dG_M*(EM_G*theta - EM_G*EM_Y))/(K_r*theta + EM_Y*I_r) - (K_E*dE_K*theta)/(K_r*theta + EM_Y*I_r) + (K_ro*dro*theta)/(K_r*theta + EM_Y*I_r)

dR=(dE*(I_r*PL_Y*X_E - EM_Y*PL_r*X_E + K_r*PL_Y*X_E + PL_r*X_E*theta))/(K_r*theta + EM_Y*I_r) - (dE_M*(EM_E*I_r*PL_Y - EM_E*EM_Y*PL_r + EM_E*K_r*PL_Y + EM_E*PL_r*theta))/(K_r*theta + EM_Y*I_r) - (dG_M*(EM_G*I_r*PL_Y - EM_G*EM_Y*PL_r + EM_G*K_r*PL_Y + EM_G*PL_r*theta))/(K_r*theta + EM_Y*I_r) - dD + (dYo*(I_r*PL_Y*X_Yo - EM_Y*PL_r*X_Yo + K_r*PL_Y*X_Yo + PL_r*X_Yo*theta))/(K_r*theta + EM_Y*I_r) - (dE_K*(I_r*K_E*PL_Y + K_E*PL_r*theta))/(K_r*theta + EM_Y*I_r) + (dro*(I_r*K_ro*PL_Y + K_ro*PL_r*theta))/(K_r*theta + EM_Y*I_r) - (dG_0*(EM_Y*PL_r - K_r*PL_Y))/(K_r*theta + EM_Y*I_r)

%agrupar el vector de datos
islmbp=[dy dr dR]';
