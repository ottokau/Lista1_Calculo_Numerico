% Valor inicial (Guarda I0)
I = (exp(1)-1)/exp(1);

% Função que tem recorrência (In+1)
for n = 0:20
    I = 1 - (n+1)*I;
    fprintf('I_%d = %.15g\n', n+1, I)
end

% Limite exato (para n tendendo ao infinito)
fprintf('Limite exato = 0\n')