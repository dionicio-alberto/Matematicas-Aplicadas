%% 
% Generamos una funcón handle para posteriormente graficarla

y=@(x) sin(x).^3-log(x)
fplot(y)
grid on, xlabel('eje x'), ylabel('eje y'),title('Gráfica de prueba 1')
%% 
% Se inicia el toolbox de varibles simbólicas

syms x y
%% 
% Vamos a resolver la siguente ecuación cuadratica de segundo orden

d = x.^2 - 5*x - 5;
a=solve(d)
%% 
% Si requerimos ayuda para un comando, la llamamos como 
%%
% 
%   help dsolve
%
%% 
% Ahora la pedimos

help dsolve
%% 
% Tambien se puede usar el comando dsolve para resolver ecuaciones diferenciales 
% de la siguente manera

syms x(t) a
dsolve(diff(x) == -a*x)