%Señalamos las variables
%{
syms c t b k h dy dr cY P M dc0 dT0 dt dTR0 dI0 dG0 dM dP theta

% Creamos el sistema de matrices
A = [-theta -b; k -h];
B = [-1 c cY -c -1 -1 0 0; 0 0 0 0 0 0 1/P -M/P^2];
y = [dc0; dT0; dt; dTR0; dI0; dG0; dM; dP];

%Resolvemos para A
detA = det(A);
A_1 = [-h b; -k h];
J = A_1*B
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
theta = 0.2;
c = 0.3;
b = 1;
k = 0.8;
h = 0.5;
M = 80;
cY = 0.4;
P = 100.5;
dc0 = 10;
dT0 = 5;
dt = 0.6;
dTR0 = 15;
dI0 = 20;
dG0 = 25;
dM = 60;
dP = 14;

% Ecuaciones diferenciales
dy = (dG0*h)/(b*k + h*theta) + (dI0*h)/(b*k + h*theta) + (dc0*h)/(b*k + h*theta) - (c*dT0*h)/(b*k + h*theta) + (c*dTR0*h)/(b*k + h*theta) - (cY*dt*h)/(b*k + h*theta) + (b*dM)/(P*(b*k + h*theta)) - (M*b*dP)/(P^2*(b*k + h*theta));

dr = (dG0*k)/(b*k + h*theta) + (dI0*k)/(b*k + h*theta) + (dc0*k)/(b*k + h*theta) - (dM*theta)/(P*(b*k + h*theta)) - (c*dT0*k)/(b*k + h*theta) + (c*dTR0*k)/(b*k + h*theta) - (cY*dt*k)/(b*k + h*theta) + (M*dP*theta)/(P^2*(b*k + h*theta));
% Agrupar el vector de datos
islm = [dy dr]';







