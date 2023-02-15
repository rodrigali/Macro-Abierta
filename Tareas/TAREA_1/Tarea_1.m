%% Modelo IS-LM de economía cerrada
% Ismael D. Valverde Ambriz
% ismaelvalverde02@gmail.com

% Condiciones iniciales de las variables
variables0 = [100, 0.05]'; %es porque es en el tiempo 0

% Rango de tiempo de integración
tspan = [0 12]; %aartir de donde quiero que empiece a contar y hasta donde.. 12 iteraciones


% Resolver la Ecuación diferencial
[t, variables] = ode45(@Funtion,tspan,variables0); 
        %ode45 sirve para resolver la ec.diferencial

% Separando resultados
y = variables(:,1);
r = variables(:,2);
    %: todos los renglones , da la columna 
% Gráficar
figure
plot(t,y)
title('Trayectoria del Producto')
figure
plot(t,r)
title('Trayectoria de la tasa de interés')
