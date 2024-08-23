clc; clear;

% Vetor tempo de 0 a 100 segundos
t = 1:100;

% Posicao 
x = 0.8*exp(-0.15.*t).*sin(6.*t);
subplot(3,1,1);
plot(t, x, 'Color', 'b');
title('Posicao vs. Tempo');
xlabel('Tempo (s)');
ylabel('Posicao (m)');
grid;

% Velocidade 
dx = 0.8*(-0.15*exp(-0.15.*t).*sin(6.*t) + 6*exp(-0.15.*t).*cos(6.*t));
subplot(3,1,2);
plot(t, dx, 'Color', 'b');
title('Velocidade vs. Tempo');
xlabel('Tempo (s)');
ylabel('Velocidade (m/s)');
grid;

% Aceleracao
d2x = 0.8*(-35.9775*exp(-0.15.*t).*sin(6.*t) - 1.8*exp(-0.15.*t).*cos(6.*t));
subplot(3,1,3);
plot(t, d2x, 'Color', 'b');
title('Aceleracao vs. Tempo');
xlabel('Tempo (s)');
ylabel('Aceleracao (m/s^2)');
grid;

% Obs: Nao foram utilizados funcao prontas para realizacao das derivadas