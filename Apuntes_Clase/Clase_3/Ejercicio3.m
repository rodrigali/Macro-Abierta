%Condiciones inciales de las variables
variables0=[100,0.5,20]';

%Rango de tiempo de integración
tspan=[0 12];

%Resolver la ecuación diferencial
[t,variables] = ode45(@FunctionE3,tspan,variables0); 

% Separando resultados
y = variables(:,1);
r = variables(:,2);
E= variables(:,3);
%: todos los renglones , da la columna 
% Gráficar
figure
plot(t,y)
title('Trayectoria del Producto')
figure
plot(t,r)
title('Trayectoria de la tasa de interés')