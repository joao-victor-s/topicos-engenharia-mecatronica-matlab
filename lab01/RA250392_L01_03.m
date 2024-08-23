clc; clear;

% ---------------------
% Tabela
Tf = [80 150 200 300 600];
u_tab = [0.73 0.25 0.094 0.021 0.00083];
Tc = 5/9*(Tf - 32);       % Temperatura [�C] 

% Plot do grafico tabelado
figure;
plot(u_tab, Tc, '-s' ,'MarkerEdgeColor', 'r', 'MarkerFaceColor', '#FFA500', 'Color', 'r', 'LineWidth', 1.5);
% -s              => quadrado + linha continua
% MarkerEdgeColor => cor da borda do quadrado
% MarkerFaceColor => cor da face do quadrado
% Color           => cor da linha


% ---------------------
% Funcao
hold on;
u = 1.0074*exp(-0.0232*Tc); % Viscosidade [Pa�s]

% Plot do grafico da funcao
plot(u, Tc, ':', 'Color', 'b', 'LineWidth', 2.5);
grid on;

% Legendas
xlabel('\mu [Pa.s]'); 
ylabel('T [oC]');
legend('data', 'eq')