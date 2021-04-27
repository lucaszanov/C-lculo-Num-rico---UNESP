% Método da Secante
% Lucas Zanovello Tahara
% 19/03/2019
% Cálculo Numérico Computacional

% Referência: RUGGIERO, M.A.G., LOPES,V.L.R., Cálculo Numérico – Aspectos teóricos e Computacionais, 2a
% edição, MAKRON Books, 1996.
% clear all
% 
% format long
% fun = ('exp(-x^2)-cos(x)');
% a = 1
% b = 2
% tol = 5e-2
% Max = 100
X(1)=a; X(2)=b;
f = inline(fun);
Y(1)=f(X(1));
Y(2)=f(X(2));

for i=2:Max
    
    X(i+1)=(X(i-1)*Y(i)-X(i)*Y(i-1))/(Y(i)-Y(i-1));
    Y(i+1)=f(X(i+1));
    
    if Y(i+1)==0
        fprintf('\n\n Foi encontrada uma raiz exata.\n\n');
        break;
    end
    
    if (abs(X(i+1)-X(i)) < tol)
        fprintf('\n\n O metodo da secante convergiu. \n\n');
        break;
    end
    iter=i;
end

if iter >= Max
    fprintf('\n\n A raiz não foi encontrada com a tolerância desejada. \n\n');
end

%Construcao da tabela com o resultado
n=length(X);
k=0:n-1;
output=[k' X' Y'];
fprintf('\n    Passo      xi        yi \n')
disp(output)

%Construcao do gráfico
figure
fplot(fun,[a-0.5,b+0.5],'r')
hold on
plot(X(1:n),Y(1:n),'*')
plot([a-0.5,b+0.5],[0 0],'k')
for i=2:n
    plot([X(i-1),X(i)],[f(X(i-1)) , f(X(i))])
end
text(X(1:n),zeros(1,n),num2str(k'),'fontsize',18,'interpreter','latex')
set(gca,'TickLabelInterpreter','latex','fontsize',18)
grid minor
hold off

%Construcao do gráfico
figure
fplot(fun,[a-0.5,b+0.5],'r')
hold on
plot(X(1:n),Y(1:n),'*')
plot([a-0.5,b+0.5],[0 0],'k')
for i=2:n
    plot([X(i-1),X(i)],[f(X(i-1)) , f(X(i))])
end
text(X(1:n),zeros(1,n),num2str(k'),'fontsize',18,'interpreter','latex')
xlim([4.4930 4.4935]);
ylim([-1.5e-3 1e-3]);
set(gca,'TickLabelInterpreter','latex','fontsize',18)
grid minor
hold off