
%% Gabarito - Lista 1
%----------------------------------------------------------------------%
% Gabarito da Lista 1
% Autor: Lucas Zanovello Tahara
% 01/05/2019, Ilha Solteira, Brazil
%----------------------------------------------------------------------%

clc; clear all; close all;
warning off;
%% Exerc�cio 1(a)

format short

A = [1 5 3;4 0 1;5 2 9]
b = [6;2;6]

elim_gauss

%% Exerc�cio 1(b)
clear all

format short

A = [2 1 5;2 3 1;1 4 0]
b = [5;14;3]

elim_gauss

%% Exerc�cio 2(a)
clear all

format short

A = [8 1 1;6 0 2;5 2 1]
b = [7;5;10]

decomposicao_lu

%% Exerc�cio 2(b)
clear all

format short

A = [8 5 1 1;7 4 0 1;2 1 0 5;4 5 9 1]
b = [2;5;3;1]

decomposicao_lu

%% Exerc�cio 2(c)
clear all

format short

A = [1 0 1 2;2 0 0 1;3 1 0 1;6 1 2 3]
b = [2;10;1;14]

decomposicao_lu

%% Exerc�cio 3(a)
clear all

format long g

A = [10 2 1;1 5 1;2 3 10]
b = [7;-8;6]
ord = 3 % Ordem da matriz A
tol = 0.05
max = 100 % N�mero m�ximo de itera��es
x0 = [0;0;0] % Chute inicial

gaussjacobi

%% Exerc�cio 3(b)
clear all
fprintf('\n\n N�o fazer este exerc�cio, dado que pelo crit�rio das linhas, n�o h� garantia de converg�ncia.\n\n');

%% Exerc�cio 4 - Gauss-Jacobi
clear all

A = [10 -3 3 0;-3 9 1 -2;2 -1 -7 1;4 3 -5 5]
b = [-1;2;3;0.5]
ord = 4 % Ordem da matriz A
tol = 0.05
max = 100 % N�mero m�ximo de itera��es
x0 = [0;0;0;0] % Chute inicial

gaussjacobi

%% Exerc�cio 4 - Gauss-Seidel
clear all

A = [10 -3 3 0;-3 9 1 -2;2 -1 -7 1;4 3 -5 5]
b = [-1;2;3;0.5]
ord = 4 % Ordem da matriz A
tol = 0.05
max = 100 % N�mero m�ximo de itera��es
x0 = [0;0;0;0] % Chute inicial

gaussseidel

%% Exerc�cio 5 - Secante
clear all

fprintf('\n\n Neste exerc�cio, � preciso trabalhar a fun��o para chegar em uma rela��o de seno e cosseno que n�o comprometa o m�todo. \n\n');

fun = ('x*cos(x)-sin(x)');
a = pi/2
b = (3*pi)/2
tol = 0.001
Max = 100

secante

%% Exerc�cio 6 - Bisse��o

clear all

absc = 0:0.1:4;
orde = absc.*log10(absc)-1;

figure
plot(absc,orde)
xlabel('X','interpreter','latex','Fontsize',20);
ylabel('Y','interpreter','latex','fontsize',20);
set(gca,'TickLabelInterpreter','latex','fontsize',20);
grid minor
line([0 4],[0 0],'Linewidth',1.5,'Color','k');


fprintf('\n\n Pode-se notar que existe uma raiz entre 2 e 3, portanto estes ser�o os limites iniciais adotados. \n\n');

a = 2;
b = 3;
A(1) = a;
B(1) = b;
f=inline('x*log10(x)-1')
tol = 0.07
Max = 100

bissecao

%% Exerc�cio 7(a) - Newton-Raphson
clear all

absc = 0:0.1:6;
orde = 2.*absc.*cos(absc)-sin(absc);

figure
plot(absc,orde)
line([0 6],[0 0],'Linewidth',1.5,'Color','k');
xlabel('X','interpreter','latex','Fontsize',20);
ylabel('Y','interpreter','latex','fontsize',20);
set(gca,'TickLabelInterpreter','latex','fontsize',20);
grid minor

% Pode-se notar que existe uma raiz entre 4 e 5, portanto o chute inicial ser� 4.5
% Voc� tamb�m poderia ter usado um valor pr�ximo de 1.2, pois ali existe outra raiz.

funcao = ('2*x*cos(x)-sin(x)');
derivada = ('cos(x)-2*x*sin(x)');
x0 = 4.5; % Chute inicial
Toler = 1e-2; % Toler�ncia
IterMax = 100; % N�mero m�ximo de itera��es

newtonraphson

% Por exemplo, agora vamos calcular para um chute inicial de 1.2
clear all

funcao = ('2*x*cos(x)-sin(x)');
derivada = ('cos(x)-2*x*sin(x)');
x0 = 1.2; % Chute inicial
Toler = 1e-2; % Toler�ncia
IterMax = 100; % N�mero m�ximo de itera��es

newtonraphson

%% Exerc�cio 7(b) - Newton-Raphson

clear all

absc = 0:0.01:2;
orde = 5.*absc.^3+absc.^2-12.*absc+4;

figure
plot(absc,orde)
grid minor
line([0 2],[0 0],'Linewidth',1.5,'Color','k');
xlabel('X','interpreter','latex','Fontsize',20);
ylabel('Y','interpreter','latex','fontsize',20);
set(gca,'TickLabelInterpreter','latex','fontsize',20);

% Pode-se notar que existe uma raiz pr�xima de 0.4 e outra pr�xima de 1.2
% Vamos calcular para as duas. Iniciando para a de 0.4

funcao = ('5*x^3+x^2-12*x+4');
derivada = ('15*x^2+2*x-12');
x0 = 0.4; % Chute inicial
Toler = 1e-2; % Toler�ncia
IterMax = 100; % N�mero m�ximo de itera��es

newtonraphson

% Agora para um chute inicial com x0 = 1.2

clear all

funcao = ('5*x^3+x^2-12*x+4');
derivada = ('15*x^2+2*x-12');
x0 = 1.2; % Chute inicial
Toler = 1e-2; % Toler�ncia
IterMax = 100; % N�mero m�ximo de itera��es

newtonraphson