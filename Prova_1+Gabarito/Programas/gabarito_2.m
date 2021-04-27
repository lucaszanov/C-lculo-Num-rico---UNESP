%% Gabarito - Prova 2
%----------------------------------------------------------------------%
% Autor: Lucas Zanovello Tahara
% 01/05/2019, Ilha Solteira, Brazil
%----------------------------------------------------------------------%

clc; clear all; close all;
warning off;
%% Exerc�cio 1

format short

A = [6 2 1;7 10 2;1 1 3]
b = [0;1;-7]

decomposicao_lu

%% Exerc�cio 2 - Gauss-Seidel
clear all

A = [4 0 1;3 4 0.5;3 2 6]
b = [5;6;0]
ord = 3 % Ordem da matriz A
tol = 0.05
max = 100 % N�mero m�ximo de itera��es
x0 = [0;0;0] % Chute inicial

gaussseidel

%% Exerc�cio 3 - Secante
clear all

fun = ('exp(-x^2)-cos(x)');
a = 1
b = 2
tol = 0.05
Max = 100

secante

%% Exerc�cio 4 - Newton-Raphson
clear all

funcao = ('x*cos(x)-sin(x)');
derivada = ('-x*sin(x)');
x0 = (3*pi)/2; % Chute inicial
Toler = 1e-3; % Toler�ncia
IterMax = 100; % N�mero m�ximo de itera��es

newtonraphson
