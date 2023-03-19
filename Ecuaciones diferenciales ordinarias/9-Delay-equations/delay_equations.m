%% 
% Now, we study delay differential equations, matlab algoritm is 
%%
% 
%   sol = dde23(ddefun,lags,history,tspan,options)
%
%% 
% where
% 
% ddefun is delay differential equation funcion, it should be expressed like 
% a similary for ode45 code,with the difference which now we define too the delay 
% varibles as new states equations. We see the next example (this example is with 
% history constant)
% 
% 
% 
% In ode45 we rewritte the before equation as
% 
% 
% 
% But now, the variables whit delay, we express it with z variable, as follows

f=@(t,x,Z)[1-3*x(1)-Z(2,1)-0.2*Z(1,2)^3-Z(1,2);...
           x(3);...
           4*x(1)-2*x(2)-3*x(3)]
%% 
% Note the z variable equations have two numbers, its firts number is relationed 
% with the state equation, in other words, Z(2,1) meaning delay equation from 
% secound state equation and the next number, one, meaning which the delay time 
% is indicated in the firts entry of lag vector.
% 
% for solve, we now define all other parameters
% 
% lags meaning delay time for each delay equation, in this case we have two 
% equations with delay

lags=[1 0.5]
%% 
% history meaning the initial conditions (condiciones iniciales) for each delay 
% fuction, this is, the behavior of each equation state before the time 0, in 
% this example, the behavior of all state functions is constant and zero.
% 
% 

history=[0; 0; 0]
%% 
% rvt meaning time value range (rango de valores de t), in this example, we 
% stars at time 0, ends at time 10 with 2^6 steps

rvt=linspace(0,10,2^6)
%% 
% Finally, the algoritm is

tx=dde23(f,lags,history,rvt)
%% 
% we plot the result 

plot(tx.x,tx.y)
%% 
% See the next example

f=@(t,x,Z)[1-3*x(1)-Z(2,1)-0.2*Z(1,2)^3-Z(1,2);...
           x(3);...
           4*x(1)-2*x(2)-3*x(3)]; % describe the delay ODE
%% 
% In this case, behavior of each function before 0 time is different or each 
% equation.

history=@(t)[exp(2.1*t);...
             sin(t);
             cos(t)]; % describe the history functions
%% 
% All other parameters are the same

lags=[1 0.5]; 
rvt=linspace(0,10,2^12)
tx=dde23(f,lags,history,rvt); 
figure
hold on
plot(tx.x,tx.y)
%% 
% Now, we agregate history functions to graph and plot

f1=@(x) exp(2.1*x);
f2=@(x) cos(x);
f3=@(x) sin(x);
figure
hold on
plot(tx.x,tx.y)
fplot(f1,[-1,0])
fplot(f2,[-1,0])
fplot(f3,[-1,0])
%% 
% 
% 
% 
% 
% 
% 
%