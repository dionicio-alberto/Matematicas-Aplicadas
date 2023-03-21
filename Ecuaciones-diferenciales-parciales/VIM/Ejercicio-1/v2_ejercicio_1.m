%% 
% Solución de una ecuación diferencial parcial utilizando el metodo de varición 
% iteracional
% 
% La primera ecuación que vamos a resolver será 
% 
% $$u_t + u u_x = 0$$
% 
% Con la condición inicial
% 
% $$x(x,0) = \frac{1}{x+1}$$
% 
% De aqui, vamos a identificar u0, Lu, Nu y g como
% 
% $$Lu = u_t = \frac{\partial u}{\partial t}$$
% 
% $$N \tilde{u} = u u_x = u \frac{\partial u}{\partial x}$$
% 
% $$u_0 = \frac{1}{1+x}$$
% 
% $$g=0$$
% 
% Introducimos los valores de u0 y activamos las variables simbolicas

syms t x xi
u=[];
u0=1/(x+1);
[Lu,Nu,g]=problema5pagina388(u0,x,t);
unmasuno=vim_code(u0,Lu,Nu,g,-1,t,xi);
u=cat(1,u,unmasuno);
%%
unmasuno=0;
[Lu,Nu,g]=problema5pagina388(u(1),x,t);
unmasuno=vim_code(u(1),Lu,Nu,g,-1,t,xi);
u=cat(1,u,unmasuno);
%%
unmasuno=0;
[Lu,Nu,g]=problema5pagina388(u(2),x,t);
unmasuno=vim_code(u(2),Lu,Nu,g,-1,t,xi);
u=cat(1,u,unmasuno);
%%
unmasuno=0;
[Lu,Nu,g]=problema5pagina388(u(3),x,t);
unmasuno=vim_code(u(3),Lu,Nu,g,-1,t,xi);
u=cat(1,u,unmasuno);
%%
unmasuno=0;
[Lu,Nu,g]=problema5pagina388(u(4),x,t);
unmasuno=vim_code(u(4),Lu,Nu,g,-1,t,xi);
u=cat(1,u,unmasuno);

%%
u(1)
u(2)
u(3)
u(4)