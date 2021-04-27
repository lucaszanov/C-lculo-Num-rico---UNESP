% Método de Newton-Raphson
% Lucas Zanovello Tahara
% 19/03/2019
% Cálculo Numérico Computacional

% Referência: RUGGIERO, M.A.G., LOPES,V.L.R., Cálculo Numérico – Aspectos teóricos e Computacionais, 2a
% edição, MAKRON Books, 1996.
format long g

x = x0; % Chute inicial
Iter = 0;
deltax = 1;

% Printando resultado na tela

fprintf('\n\n Cálculo de raiz de equação pelo método de Newton-Raphson \n\n');
fprintf('  k      x_k          Fx_k         DFx_k        deltax_k \n');

while 1
    Fx = eval(funcao);
    DFx = eval(derivada);
    
    fprintf('%3i%11.5f%14.5e%14.5e', Iter, x, Fx, DFx);
    
    if(abs(deltax) <= Toler && abs(Fx) <= Toler) || DFx==0 ||Iter >= IterMax
        break
    end
    
    deltax = Fx/DFx;
    x = x-deltax;
    Iter = Iter+1;
    
    fprintf('%14.5e\n',deltax);
end

Raiz = x;

% Teste de convergência

Info = abs(deltax) > Toler || abs(Fx) > Toler;

fprintf('\n\n Raiz =%9.5f\nIter =%3i\nInfo =%3i\n', Raiz, Iter, Info);
