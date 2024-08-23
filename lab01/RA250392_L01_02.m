clc; clear;

% Parametros
y0 = 1;            % Altura inicial [m]
v0 = 30;           % Velocidade inicial [m/s]
g = 9.81;          % Aceleracao da gravidade [m/s^2]

% Angulos iniciais
tt_deg = 0:15:75;      % Graus
tt = deg2rad(tt_deg);  % Graus para radianos (1x6)

% Distancia horizontal 
x = 0:5:80;        % (17x1)
x = x';            % Transposicao do vetor para realizar a multiplicacao matricial
  
% Funcao trajetoria de um projetil
y = x .*tan(tt) - (g .* x.^2)./(2*v0^2*(cos(tt).^2)) + y0;

% Plot do grafico
figure;
plot(x, y);

% Parametrizacao da escala dos eixos => axis([xmin xmax ymin ymax]) 
axis([0 80 0 max(y, [], 'all')]);   % M = max(A,[],"all") => Acha o maximo sobre todos os elementos de A


% Legendas
grid;
xlabel('Distancia horizontal (x) [m]');
ylabel('Altura (y) [m]');

legend_str = strcat('Theta = ', string(tt_deg'), 'o');  % Concatena strings 
legend(legend_str, 'Location', 'northeast');            % Posiciona o vetor de strings na legenda 


% Obs: Optei por nao utilizar lacos de repeticao for para seguir o fluxo de aprendizado