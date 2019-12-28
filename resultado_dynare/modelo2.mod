%Teoria Macroeconômica II
%Prof: José Simão
%Monitor: Pedro Carvalho


%identification (advanced = 1, graph_format = pdf);

var 
pi %Inflação
x %Gap do produto
ynat %Produto natural
y %produto
rnat %Taxa de juros natural
r %Taxa de juros real
i %Taxa de juros nominal
l %Horas trabalhadas
mg %Crescimento monetário
m %Choque de política monetária________AR(1)
a %Choque tecnológico__________________AR(1)
rano %Taxa de juros real anualizada
iano %Taxa de juros nominal anualizada
rnatano %Taxa de juros natural anualizada
piano; %Taxa de inflação anualizada
varexo epsilona %Choque exógeno de tecnologia
epsilonm; %Choque exógena de política monetária

parameters alpha %Capital share
beta %Fator de desconto
rhoa %Fator autorregressivo do choque tecnológico
rhom %Fator autorregressivo do choque de p. monetária
sigma %Log utilidade
phi %Elasticidade Frisch da oferta de trabalho
phi_pi %Peso da inflação na Regra de Taylor
phi_y %peso do produto na Regra de Taylor
etah %Semi elasticidade da demanda por moeda
epsilon %Elasticidade da demanda
theta %Parâmetro de Calvo: prob. de otimização de preços
omega %Parâmetro composto
psi %Parâmetro composto
lambda %Parâmetro composto
kapa; %Parâmetro composto

% Parâmetros fixos
alpha = 1/3;
beta = 0.88;
rhoa = 0.9;
rhom = 0.5;
sigma = 1;
phi = 1;

phi_pi = 1.5;
phi_y = 0.125;
etah = 4;
epsilon = 6;
%rigidez
theta = 0.1;

%Parâmetros compostos
omega=(1-alpha)/(1-alpha+alpha*epsilon);
psi=(1+phi)/(sigma*(1-alpha)+phi+alpha);
lambda=(1-theta)*(1-beta*theta)/theta*omega;
kapa=lambda*(sigma+(phi+alpha)/(1-alpha));

model(linear);
pi=beta*pi(+1)+kapa*x; %(1) Curva de Phillips Novo Keynesiana
%(2) Curva IS dinâmica
x=-1/sigma*(i-pi(+1)-rnat)+x(+1);
%(3) Regra de Taylor
i=phi_pi*pi+phi_y*x+m;
%(4) Taxa de juros natural
rnat=sigma*psi*(a(+1)-a);
%(5) Taxa de juros real
r=i-pi(+1);
%(6) Produto natural
ynat=psi*a;
%(7) Gap do produto
x=y-ynat;
%(8) função de produção
y=a+(1-alpha)*l;
%(9) Crescimento da oferta de moeda
mg=4*(y-y(-1)-etah*(i-i(-1))+pi);

%Choques
%(10) Choque de política monetária
m=rhom*m(-1)+epsilonm;
%(11) Choque de tecnologia
a=rhoa*a(-1)+epsilona;

%Taxas anualizadas

%(12) Taxa de juros nominal anualizada
iano=4*i;
%(13) Taxa de juros real anualizada
rano=4*r;
%(14) Taxa de juros natural anualizada
rnatano=4*rnat;
%(15) taxa de inflação anualizada
piano=4*pi;
end;

shocks;
var epsilona; stderr 1;% Choque de um desvio
var epsilonm = 0.25^2;% Choques com desvio padrão de 0.25 (1%anualizado)
end;
%steady;
%check;

%dynare_sensitivity(graph_format=(eps,fig));

stoch_simul(noprint,irf_shocks=(epsilona),irf=12);
stoch_simul(noprint,irf_shocks=(epsilonm),irf=12);
%stoch_simul(noprint,irf_shocks=(epsilonm), irf=12) x piano y l iano rano mg a;
%dynare_sensitivity(graph_format=(jpg)); %png não é aceito

%write_latex_dynamic_model;

matrixname = oo_.irfs;
save filename.m matrixname;
