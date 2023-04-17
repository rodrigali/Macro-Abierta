// Presentar variables 
var Y, C, I, N, K, R, W, A, Z, O, Q;

// Variables exógenas
varexo eps u;

// Paramétros
parameters alpha beta gamma delta rho_a rho_z theta M;
alpha=0.35;
beta=0.93;
delta=0.06;
theta=0.05;
rho_a=0.95;
rho_z=0.95;
M=0.05;
// PARAMETRO DE VOLATILIDAD O de coeficiente de reserva
gamma = 0.5;
// Ecuaciones
model;
Y = C + I;
C(+1)/C= beta *(R(+1) +1 -delta);
K= I+(1-delta)*K(-1);
N=(W-gamma*C)/W;
R=alpha *( Y/K(-1));

W= theta*(Y/N);
Q=(1-alpha-theta)*(Y/O);

Y= A*((K(-1))^(alpha))*(N^(theta))*(O^(1-alpha-theta));

log(A)=rho_a*log(A(-1))+eps;

log(Z)=rho_z*log(Z(-1))+u;
O=Z*M;
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
eps=0;
u=0;
Z=1;
O=Z*M;
Q=(1-alpha-theta)*(Y/O);
end;

// Bloque de estado estacionario
steady;
// Condiciones de estabilidad (Blanchard & Kahn) se supone una normal
check;

// Choques
shocks;
var eps; stderr 0.01;
var u; stderr 0.01;
end;

// Simulación estocásticos
stoch_simul Y C I K N R W O Q;


