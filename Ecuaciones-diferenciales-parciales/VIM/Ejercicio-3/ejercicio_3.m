%% 
% Soluciones a la ecuacion diferencial parcial
% 
% $$u_{xx}=2 u_{tt} + 3 u_t + u$$
% 
% con las condiciones iniciales
% 
% $$u(0,t) = 1 - \exp(-t), \;\;\;\;\; u_x(0,t) = 1$$
% 
% $$u(x,0) = -1 + \exp(x), \;\;\;\;\; u_t(x,0)=1$$
% 
% Por practicidad, elegimos resolver esta escuación a través de la variable 
% x, realizando el desarrollo correspondiente, encontramos el valor de $\lambda$ 
% como
% 
% $$\lambda = \xi - x$$
% 
% Para que el sistema satisfaga las condiociones iniciales, establecemos $u_0$ 
% como 
% 
% $$u_0 = 1 - \exp(-t) + x$$
% 
% Escribimos lo anterior en matlab

syms t x xi
u=[];
u0=1-exp(-t)+x;
lambda=xi-x
[Lu,Nu,g]=problema5pagina393(u0,x,t);
unmasuno=vim_code(u0,Lu,Nu,g,lambda,x,xi);
u=cat(1,u,unmasuno)
%%
unmasuno=0;
[Lu,Nu,g]=problema5pagina393(u(1),x,t);
unmasuno=vim_code(u(1),Lu,Nu,g,lambda,x,xi);
u=cat(1,u,unmasuno)
%%
unmasuno=0;
[Lu,Nu,g]=problema5pagina393(u(2),x,t);
unmasuno=vim_code(u(2),Lu,Nu,g,lambda,x,xi);
u=cat(1,u,unmasuno)
%%
unmasuno=0;
[Lu,Nu,g]=problema5pagina393(u(3),x,t);
unmasuno=vim_code(u(3),Lu,Nu,g,lambda,x,xi);
u=cat(1,u,unmasuno)
%%
unmasuno=0;
[Lu,Nu,g]=problema5pagina393(u(4),x,t);
unmasuno=vim_code(u(4),Lu,Nu,g,lambda,x,xi);
u=cat(1,u,unmasuno)
%%
expand(u(5))