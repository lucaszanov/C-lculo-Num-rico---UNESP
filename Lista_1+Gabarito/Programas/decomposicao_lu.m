% Decomposi��o LU
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

% C�lculo dos fatores - matriz de permuta��o

for i=1:n
  p(i)=i; % Nesta etapa, estamos numerando as linhas
end

% Aqui vamos fazer o pivoteamento - comparando piv�
for k=1:n-1
  pv=A(k,k); 
  r=k;
  for i=k+1:n
    if abs(A(i,k))>abs(pv)
      pv=A(i,k);
      r=i;
    end
  end

% Caso o piv� seja zero, a matriz � singular
  if pv==0
    fprintf('\nA matriz � singular!\n\n');
  end

% Neste ponto, fazemos a troca de linhas
  if r~=k
    aux=p(k);
    p(k)=p(r);
    p(r)=aux;
    for j=1:n
      aux=A(k,j);
      A(k,j)=A(r,j);
      A(r,j)=aux;
    end
  end

% Aqui vamos obter a matriz A, que cont�m L e U
  for i=k+1:n
    m=A(i,k)/A(k,k)
    A(i,k)=m;
      for j=k+1:n
        A(i,j)=A(i,j)-m*A(k,j)
      end
  end
end

% Resolu��o dos sistemas triangulares
% c = Pb
for i=1:n
  r=p(i);
  c(i,1)=b(r);
end

% Ly=b
y(1)=c(1);
for i=1:n
  soma=0;
  for j=1:i-1
    soma=soma+A(i,j)*y(j);
  end
  y(i)=(c(i)-soma);
end

% Ax=y
x(n)=y(n)/A(n,n);
for i=n:-1:1
  soma=0;
  for j=i+1:n
    soma=soma+A(i,j)*x(j);
  end
  x(i)=(y(i)-soma)/A(i,i);
end

% Solu��o final
fprintf('\n Solucao: \n')
x