% Definindo dados
l2 = 10;
l1 = 8;
gamma = 3*pi/5;

% Função de alfa
f = @(a) l2*cos(pi-gamma-a)/sin(pi-gamma-a)^2 ...
    - l1*cos(a)/sin(a)^2;

% Derivada de alfa
df = @(a) l2*(1/sin(pi-gamma-a) ...
    + 2*cos(pi-gamma-a)^2/sin(pi-gamma-a)^3) ...
    + l1*(1/sin(a) ...
    + 2*cos(a)^2/sin(a)^3);

% Chute inicial
a = 0.5;

% Método de Newton-Raphson
for k = 1:10
    a = a - f(a)/df(a);
end

% Comprimento (L) da barra
L = l2/sin(pi-gamma-a) + l1/sin(a);

fprintf('alpha = %.10f rad\n', a);
fprintf('L = %.10f\n', L);