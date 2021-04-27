% M�todo da Bisse��o
% Lucas Zanovello Tahara
% 19/03/2019
% C�lculo Num�rico Computacional

% Refer�ncia: RUGGIERO, M.A.G., LOPES,V.L.R., C�lculo Num�rico � Aspectos te�ricos e Computacionais, 2a
% edi��o, MAKRON Books, 1996.
format long g

% Condi��o de execu��o

if f(a)*f(b)>0 
    fprintf('\n\n A fun��o n�o muda de sinal. \n\n')
end

% Execu��o do m�todo
precisao = tol;
Iteracoes = Max;

for i=1:Iteracoes
    X(i)=((A(i)+B(i))/2);
    Y(i)=f(X(i));
    
    % Condi��o dos intervalos
    output(i,:) = [i X(i)];

    if(X(i)-A(i))<precisao
        fprintf('\n\n Houve converg�ncia. \n\n');
        fprintf('\n\n Itera��o      x(i)   \n\n');
        disp(output)
        break
        % Se houve converg�ncia o sistema para
    end
    
    if Y(i)==0
        fprintf('\n\n Foi encontrada uma raiz exata. \n\n')
        break
    elseif f(A(i))*Y(i)<0
        
        % Bissec��o
        A(i+1)=A(i);
        B(i+1)=X(i);
        
    else
        A(i+1)=X(i);
        B(i+1)=B(i);
    end
        
    % Informa��o
    
    Inter=i;
    
    if Inter>=Iteracoes
        fprintf('\n\n N�o foi encontrado um valor com a precis�o desejada. \n\n')
    end
end