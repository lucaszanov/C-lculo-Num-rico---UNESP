% Método da Bisseção
% Lucas Zanovello Tahara
% 19/03/2019
% Cálculo Numérico Computacional

% Referência: RUGGIERO, M.A.G., LOPES,V.L.R., Cálculo Numérico – Aspectos teóricos e Computacionais, 2a
% edição, MAKRON Books, 1996.
format long g

% Condição de execução

if f(a)*f(b)>0 
    fprintf('\n\n A função não muda de sinal. \n\n')
end

% Execução do método
precisao = tol;
Iteracoes = Max;

for i=1:Iteracoes
    X(i)=((A(i)+B(i))/2);
    Y(i)=f(X(i));
    
    % Condição dos intervalos
    output(i,:) = [i X(i)];

    if(X(i)-A(i))<precisao
        fprintf('\n\n Houve convergência. \n\n');
        fprintf('\n\n Iteração      x(i)   \n\n');
        disp(output)
        break
        % Se houve convergência o sistema para
    end
    
    if Y(i)==0
        fprintf('\n\n Foi encontrada uma raiz exata. \n\n')
        break
    elseif f(A(i))*Y(i)<0
        
        % Bissecção
        A(i+1)=A(i);
        B(i+1)=X(i);
        
    else
        A(i+1)=X(i);
        B(i+1)=B(i);
    end
        
    % Informação
    
    Inter=i;
    
    if Inter>=Iteracoes
        fprintf('\n\n Não foi encontrado um valor com a precisão desejada. \n\n')
    end
end