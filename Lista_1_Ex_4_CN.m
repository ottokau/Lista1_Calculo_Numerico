% N pontos na função que serão gerados aleatóriamente
N = 100000;

% Coordenadas aleatórias
x = rand(N,1);
y = rand(N,1);

% Verifica se cada ponto é circunscrito
dentro = (x.^2 + y.^2 <= 1);

m = cumsum(dentro);

n = (1:N)';

% Função para aproximar os N aleatórios a pi
pi_aprox = 4*m./n;

% Evolução do erro que será obsrvado
erro = abs(pi_aprox - pi);

plot(n, erro)

% Plotar gráfico da função
xlabel('n')
ylabel('Erro absoluto')
title('Erro na aproximação de \pi')
grid on