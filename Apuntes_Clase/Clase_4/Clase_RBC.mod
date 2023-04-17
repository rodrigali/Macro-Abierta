// Presentar variables 
var Y, C, I, N, K, R, W, A;

// Variables exógenas
varexo eps;

// Paramétros
parameters alpha beta gamma delta rho;
alpha=0.35;
beta=0.93;
gamma=0.2;
delta=0.06;
rho=0.95;

// Ecuaciones
model;
Y = C + I;
C(+1)/C= beta *(R(+1) +1 -delta);
K= I+(1-delta)*K(-1);
N=(W-gamma*C)/W;
R=alpha *( Y/K(-1));
W= (1-alpha)*( Y/N);
Y= A*((K(-1))^(alpha))*(N^(1-alpha));
log(A)=rho*log(A(-1))+eps;
end;

// Valores iniciales
initval;
Y = 1;
C = 0.8;
I = 0.2;
K = 3.5;
N = 0.2;
W = 1;
R = 0.05;
A = 1;
end;

// Bloque de estado estacionario
steady;
// Condiciones de estabilidad (Blanchard & Kahn)
check;

// Choques
shocks;
var eps; stderr 0.01;
end;

// Simulación estocásticos
stoch_simul;








