//variables
var y, c ,i, k, n, w, r, a;
//variables exogenas
varexo eps;
//parametros
//participación del
parameters alpha, beta, gama, delta, rho;
alpha= 0.35; 
//factor de descuento intertemporal puede ir de 0.90~0.95, entre mas alto es mas impaciente 
beta= 0.93;
// ponderación del trabajo en el consumo, el ocio es 0.8,el agente economico prefiere una relación de 0.8 ocio 0.2 trabajar.
gama=0.2;
delta=0.06;
//persistenicia del choque al choque estocastico, se recomienda estimar al 0.95
rho=0.95;
//ecuaciones
model;
y=c+i;
c(+1)/c=beta*(r(+1)+1-delta);
k=i+(1-delta)*k(-1);
n=(w-gama*c)/w;
r=alpha*(y/k(-1));
w=(1-alpha)*(y/n);
y=a*((k(-1))^(alpha))*(n^(1-alpha));
//tambien se retraso
log(a)=rho*log(a(-1))+ eps(+1);
end;

//valores iniciales 
initval;
y=1;
c=0.8;
i=0.2;
k=3.5;
n=0.2;
w=1;
r=0.05;
a=1;
end;

//estado estacionario
steady;
//tiene que verificar que nuestra matriz no tenga 0s triangular, que son las condiones de estabilidad(Blanchar-khan)
check;

//choques
shocks;
//puede haber error si eso pasa se tiene que ver en el manual
var eps; stderr 0.01;
end;

//funcion estadar del error stderr
//simulacion estocastica
stoch_simul;
