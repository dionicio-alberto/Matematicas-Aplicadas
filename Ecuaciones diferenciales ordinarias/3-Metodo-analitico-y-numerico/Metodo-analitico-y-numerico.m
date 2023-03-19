%% 
% Este es el codigo generado para la 6ta clase de Matemáticas Aplicadas.
% 
% Resolveremos la siguiente ecuación diferencial con valores iniciales
% 
% $$\frac{d^2y}{dt^2} + 7\frac{dy}{dt}+25y = e^{-4t}$$
% 
% Con las condiciones
% 
% $$y(1) =2, \;\;\; y\prime(1)=0$$
% 
% Introduciones las variables simbólicas, definimos la ecuacion y establecemos 
% las condiciones:

syms y(t) t;
ec = diff(y,t,2)+7*diff(y,t,1)+25*y==exp(-4*t);
Dy=diff(y,t,1);
cond=[y(1)==2 Dy(1)==0];
%% 
% Resolvemos la ecuacion, a continuacion se muestra la solucion general y la 
% particular

ygeneral=dsolve(ec)
yparticular=dsolve(ec,cond)
%% 
% Procedemos a graficar lo obtenido

fplot(yparticular,[1,4]), grid, xlabel('t'),ylabel('y')
%% 
% Ahora realizaremos lo anterior pero usando un método diferente
% 
% Aqui vamos a definir las variables de estado como
% 
% $$y=y(1), \;\;\; y\prime=y(2), \;\;\; y\prime\prime=y(3)$$

f1 = @(t,y) [y(2); exp(-4*t)-25*y(1)-7*y(2)]
%% 
% Aqui la funcion se define a traves de una función handle, creando una funcion 
% en un vector  columna, donde la primera entrada representa a la primera derivada 
% y la segunda entrada a la segunda derivada.

rtv=1:0.05:4
ci=[2;0]
%% 
% rtv representa el rango sobre el cual se resolvera númericamente la ecuación 
% diferencial
% 
% ci representa las condiciones iniciales, donde la primera entrada representa 
% la funcion y evaluada en la condicion inicial (dada por el inicio en rtv) y 
% la segunda entrada representa la condicion inicial de la primera derivada evuluada 
% en el inicio. 

[t,y]=ode45(f1,rtv,ci);
%% 
% Ahora se ha aplicado el código, como es una solución numerica a una ecuaciuon 
% de segundo orden, el vector t obtiene solo los datos de t, el vector y obtiene 
% los datos de y(t) y de y'(t),

plot(t,y), grid
%% 
% Vamos a resolver la siguiente ecuacion
% 
% $$\frac{d^3y}{dt}=4$$
% 
% iniciamos poniendo la funcion

f2=@(t,y)[y(2);y(3);4]
rango=1:0.01:5;
ci=[1 2 3]
[t,y]=ode45(f2,rango,ci)
plot(t,y)
%% 
% 
% 
%