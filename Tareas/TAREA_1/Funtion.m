%Señalamos las variables
%{
syms phro Ir Ly Lr dy dr dG dM dP P M

% Creamos el sistema de matrices
A = [-phro Ir;Ly Lr];
B = [-1 0 0; 0 1/P -M/P^2];
y = [dG; dM; dP];

%Resolvemos para A
x = A\B*y;
dy = x(1)
dr = x(2)
%}
%% Modelo dinámico
function islm=modelo_islm(t,variables);
% Descripción del proceso
y=variables(1);
r=variables(2);
% Parámetros
phro = 0.2;
Ir =0.5;
Ly = 0.7;
Lr = 0.2;
dy = 0.3;
dG = 25;
dM = 60;
dP = 14;
M = 80;
P=100.5;


% Ecuaciones diferenciales
dy = (Lr*dG)/(Lr*phro + Ir*Ly) + (Ir*dM)/(P*(Lr*phro + Ir*Ly)) - (Ir*M*dP)/(P^2*(Lr*phro + Ir*Ly));

dr = (dM*phro)/(P*(Lr*phro + Ir*Ly)) - (Ly*dG)/(Lr*phro + Ir*Ly) - (M*dP*phro)/(P^2*(Lr*phro + Ir*Ly));
% Agrupar el vector de datos
islm = [dy dr]';
