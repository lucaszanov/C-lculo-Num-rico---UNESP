% Gauss-Seidel
% Lucas Zanovello Tahara
% 19/03/2019
% Cálculo Numérico Computacional

% Referência: RUGGIERO, M.A.G., LOPES,V.L.R., Cálculo Numérico – Aspectos teóricos e Computacionais, 2a
%edição, MAKRON Books, 1996.

% Limpando tela e variáveis
% clear all; clc; close all;

% Inserindo as matrizes A, b, tolerancia, X0

% opcao = input('Voce deseja inserir um sistema (1) ou rodar com o sistema pre-definido (2)? ');

% Manualmente
% if opcao==1
%   ord = input('Ordem da matriz: ');
%   A = input('Matriz dos coeficientes A: ');
%   x0 = input('Entre com o vetor X inicial: ');
%   b = input('Entre com o vetor B: ');
%   tol = input('Entre com a tolerância: ');
%   max = input('Entre com o número máximo de iterações: ');
% end

% Valores pré-definidos
% if opcao==2
%   ord = 3;
%   A = [10 2 1;1 5 1;2 3 10]
%   x0 = [0;0;0]
%   b = [7;-8;6]
%   tol = 1e-3
%   max = 100
% end

% Processamento
k = 1;
for i = 1:ord
  for j = 1:ord
    if i == j
      C(i,j) = 0; % Construção da matriz C
      g(i,1) = b(i,1)/A(i,i); % Vetor g
    else
      C(i,j) = -A(i,j)/A(i,i);
    end
  end
end

while (k < max)
  x = x0;
  for i = 1:ord % Aqui está a peculiaridade do método de Gauss-Seidel
    x(i,1) = C(i,:)*x + g(i,1); % Atribuição progressiva
  %(Obs. A expressão C(i,:)*x realiza uma
  % multiplicação entre dois vetores
  %(uma linha da matriz e o vetor x0))
  end
  % Comparação do erro
  for i = 1:ord
    ERX(i,1) = abs(x(i,1)-x0(i,1));
    mtol(i,1) = tol;
  end
  if ERX < mtol
    x;
  break
  end
  x0 = x % O novo x0 é o x calculado
  k = k+1;
end

% Solução final
fprintf('\n\n Solucao: \n')
x
fprintf('\n Numero de iteracoes: ')
k
