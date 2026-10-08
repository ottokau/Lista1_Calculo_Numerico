% Função f a ser avaliada
f = @(x) x^7 - 7*x^6 + 21*x^5 - 35*x^4 + 35*x^3 - 21*x^2 + 7*x - 1;

%plota o gráfico com a grid
fplot(f, [-1 3])
title('Gráfico de f(x)')
xlabel('x')
ylabel('f(x)')
grid on