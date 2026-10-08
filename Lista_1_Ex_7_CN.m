% Valor do a
a = 2;

% Funçao de ponto fixo
g = @(x) x*(x^2 + 3*a)/(3*x^2 + a);

% Derivada da funcao
dg = @(x) 3*(x^2-a)^2/(a+3*x^2)^2;

% Chute inicial
x = 1;

% Iteracoes
for k = 1:10

    x = g(x);

    fprintf('k = %d | x = %.12f | |g''(x)| = %.4e\n', ...
        k, x, abs(dg(x)));

end

% Printa o ponto fixo
fprintf('sqrt(a) = %.12f\n', sqrt(a));