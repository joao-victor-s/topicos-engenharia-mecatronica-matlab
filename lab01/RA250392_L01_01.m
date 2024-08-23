clc; clear;
% -------------------------------------------------------------------
% a)
A=[2:4;3:2:7;5:-1:3] % Cria uma matriz onde cada linha cria um vetor de x a y, sendo x:y, com passo unitario
A=A' %  Inverte linhas com colunas na matriz
A(:,2)=[] % O operador : Eh utilizado para seleciona parte da matriz A, a segunda coluna, e depois eh passado um vetor vazio para remove-lo
A=[A(:,2) [0 7 2]' A(:,1)] % Eh montado a matriz A (3x3) utilizando a segunda coluna da matriz anterior, o vetor [0 7 2] transposto e por fim a primeira coluna da matriz anterior 

% -------------------------------------------------------------------
% b)
A=[1 2; 3 4; 5 6] % Monta uma matriz 3x2 com os valores fornecidos
A(3,:)' % Seleciona a terceira linha da matriz anterior e faz a transposicao

% -------------------------------------------------------------------
% c)
A = ones(2) % Cria uma matriz 2x2 unitaria
B = zeros(2) % Cria uma matriz de zeros 2x2
C = [A B ; B A] % Monta uma matriz C com as matrizes anteriores  

% -------------------------------------------------------------------
% d)
y=[0:0.6:4]' % Cria um vetor de 0 a 4 com passo 0.6 e depois realiza sua transposicaoo com '

% -------------------------------------------------------------------
% e)
a=1 % Armazena 1 na variavel a
b=4 % Armazena 4 na variavel b
c=5 % Armazena 5 na variavel c
a+b/c % Realiza a equacao b/c + a
