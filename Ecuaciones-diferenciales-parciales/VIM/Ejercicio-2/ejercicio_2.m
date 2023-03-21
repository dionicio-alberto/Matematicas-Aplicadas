%% 
% En este codigo vamos a resolver mediente el VIM el problema 10 de la pagina 
% 388 del libro de Wazwaz, el cua esta dado por
% 
% $$u_t + u u_x = u_{xx}$$
% 
% Con las condiciones iniciales
% 
% $$u(0,t)= - \frac{2}{3t}$$
% 
% $$u_x(0,t)=\frac{1}{t}+ \frac{2}{9t^2}$$
% 
% Este problema lo vamos a integrar respecto a x, esto debido a las condiciones 
% inicales del dadas por el problema
% 
% Aquí identificamos Lu, Nu, gx como
% 
% $$Lu=u_{xx}=\frac{\partial^2 u_n}{\partial x^2}$$
% 
% $$Nu=-u_t -u u_x = -u - u \frac{\partial u_n}{\partial x}$$
% 
% $$g=0$$
% 
% Y despues de resolver a traves de fracciones parciales, el valor de $\lambda$ 
% es
% 
% $$\lambda = \xi - x$$

syms t x xi
lambda=xi-x
u=[];
u0=-2/(3*t)+(1/t+2/(9*t^2))*x;
[Lu,Nu,g]=problema10pagina388(u0,x,t);
unmasuno=vim_code(u0,Lu,Nu,g,lambda,x,xi);
u=cat(1,u,unmasuno);
%%
u(1)
%%
unmasuno=0;
[Lu,Nu,g]=problema10pagina388(u(1),x,t);
unmasuno=vim_code(u(1),Lu,Nu,g,lambda,x,xi);
u=cat(1,u,unmasuno);
%%
u(2)
%%
unmasuno=0;
[Lu,Nu,g]=problema10pagina388(u(2),x,t);
unmasuno=vim_code(u(2),Lu,Nu,g,lambda,x,xi);
u=cat(1,u,unmasuno);
%%
u(3)
%%
unmasuno=0;
[Lu,Nu,g]=problema10pagina388(u(3),x,t);
unmasuno=vim_code(u(3),Lu,Nu,g,lambda,x,xi);
u=cat(1,u,unmasuno);
%%
u(4)
%%
unmasuno=0;
[Lu,Nu,g]=problema10pagina388(u(4),x,t);
unmasuno=vim_code(u(4),Lu,Nu,g,lambda,x,xi);
u=cat(1,u,unmasuno);
%%

unmasuno=0;
[Lu,Nu,g]=problema10pagina388(u(5),x,t);
unmasuno=vim_code(u(5),Lu,Nu,g,lambda,x,xi);
u=cat(1,u,unmasuno);
unmasuno=0;
%%
[Lu,Nu,g]=problema10pagina388(u(6),x,t);
unmasuno=vim_code(u(6),Lu,Nu,g,lambda,x,xi);
u=cat(1,u,unmasuno);
unmasuno=0;
%%
u(7)
%%
[Lu,Nu,g]=problema10pagina388(u(7),x,t);
unmasuno=vim_code(u(7),Lu,Nu,g,lambda,x,xi);
u=cat(1,u,unmasuno);
%%
u(4)
u(5)
%%
expand(u(1))
expand(u(2))
expand(u(3))
%%
u(1)
expand(u(2))
expand(u(3))
%% 
%