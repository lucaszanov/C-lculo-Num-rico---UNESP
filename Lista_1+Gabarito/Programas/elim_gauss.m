% Elimina��o de Gauss
% Lucas Zanovello Tahara
% 19/03/2019
% C�lculo Num�rico Computacional

% Refer�ncia: RUGGIERO, M.A.G., LOPES,V.L.R., C�lculo Num�rico � Aspectos te�ricos e Computacionais, 2a
%edi��o, MAKRON Books, 1996.

% Limpando tela e vari�veis
% clear all; clc; close all;

% Inserindo as matrizes A e b
% opcao = input('Voce deseja inserir um sistema (1) ou rodar com o sistema pre-definido (2)? ');

% Manualmente
% if opcao==1
% A = input('Digite a matriz A: ');
% b = input('Digite o vetor b: ');
% end

% if opcao==2
% Valores pr�-definidos
% A = [1 5 3;4 0 1;5 2 9]
% b = [6;2;6]
% end

% Obtendo o tamanho da matriz A
n=length(A);

% Processo de elimina��o

for k=1:n-1
  % Aqui vamos inserir o pivoteamento parcial
  for c=k:n
    if A(c,k)>A(k,k) 
      % Troca de linhas
      aux = b(k);
      linha = A(k,:);
      A(k,:)=A(c,:);
      b(k)=b(c);
      A(c,:)=linha;
      b(c)=aux;
    end
  end
  
  % Obten��o da matriz A com a elimina��o  
  for  i=k+1:n
    m=A(i,k)/A(k,k) % Multiplicador
    A(i,k)=0
    for j=k+1:n
      A(i,j)=A(i,j)-m*A(k,j)
    end
    b(i)=b(i)-m*b(k)
    end
end


% Resolu��o do sistema
x(n)=b(n)/A(n,n); 
for k=n-1:-1:1
  s=0;
  for j=k+1:n
    s=s+A(k,j)*x(j)
    x(k)=(b(k)-s)/A(k,k)
  end
end

% Solu��o final
fprintf('\n Solucao: \n')
x