%Fazendo a função que será o somatório
function S = soma_pi(n)

S = 0;

% Loop que repetirá a fórmula n vezes
for m = 0:n-1

    termo = 16^(-m) * ...
        (4/(8*m+1) ...
        - 2/(8*m+4) ...
        - 1/(8*m+5) ...
        - 1/(8*m+6));

    S = S + termo;
end

end

soma_pi(1)
soma_pi(2)
soma_pi(3)