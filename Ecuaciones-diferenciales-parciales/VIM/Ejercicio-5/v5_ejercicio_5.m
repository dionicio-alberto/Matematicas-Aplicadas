%% 
% Vamos a resolver la siguiente ecuacion diferencial 
% 
% $$u_t + \frac{1}{8}(u^2) - 2x^2 =0$$
% 
% con la siguiente con$u(x,0)=0$dicion inicial
% 
% Con la informacion, llegamos a que nuestra ecuacion de recurrencia es:
% 
% $$u_{n+1}=u_n - \int_0^t \left[ \frac{\partial u_n}{\partial \xi} + \frac{1}{8} 
% (\frac{\partial u_n}{\partial x})^2 - 2x^2 \right] d\xi$$
% 
% Proponemos como solucion inicial
% 
% $$u_0 = xt$$

syms x xi t
u0=x*t;
u_cambiada=subs(u0,t,xi);
derivada_adentro=diff(u_cambiada,xi,1)+(1/8)*(diff(u_cambiada,x,1))^2-2*x^2;
integral_vim=int(derivada_adentro,xi,0,t);
u(1)=u0-integral_vim;
expand(u(1))
%%
u_cambiada=0; derivada_adentro=0; integral_vim=0;

u_cambiada=subs(u(1),t,xi);
derivada_adentro=diff(u_cambiada,xi,1)+(1/8)*(diff(u_cambiada,x,1))^2-2*x^2;
integral_vim=int(derivada_adentro,xi,0,t);
u(2)=u(1)-integral_vim;
expand(u(2))
%%
u_cambiada=0; derivada_adentro=0; integral_vim=0;

u_cambiada=subs(u(2),t,xi);
derivada_adentro=diff(u_cambiada,xi,1)+(1/8)*(diff(u_cambiada,x,1))^2-2*x^2;
integral_vim=int(derivada_adentro,xi,0,t);
u(3)=u(2)-integral_vim;
expand(u(3))
%%
u_cambiada=0; derivada_adentro=0; integral_vim=0;

u_cambiada=subs(u(3),t,xi);
derivada_adentro=diff(u_cambiada,xi,1)+(1/8)*(diff(u_cambiada,x,1))^2-2*x^2;
integral_vim=int(derivada_adentro,xi,0,t);
u(4)=u(3)-integral_vim;
expand(u(4))
%% 
%