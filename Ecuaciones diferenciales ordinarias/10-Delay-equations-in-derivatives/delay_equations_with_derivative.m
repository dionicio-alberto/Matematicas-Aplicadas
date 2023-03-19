%% 
% We have the next problem
% 
% 
% 
% We start define our state equation
% 
% $$x(1) = x(t), \;\;\;\; x(2) = y(t);$$
% 
% And, for delay equation.
% 
% $$z(1,\;) = x(t-a_i) \;\;\;\; z(2,\;) = y(t-a_j)$$
% 
% When $a_i$ and $a_j$ are delays. Now, we write the equations

f=@(t,x,Z)[(Z(1,1)).^2+(Z(2,1)).^2-6*Z(1,2)-8*Z(2,3);...
           x(1)*(2*(Z(2,1))-x(1)+5-2*(Z(1,3)).^2)]
%% 
% We introduce lags

lags=[0.2; 0.5; 0.1]
%% 
% The history for this equations are
% 
% $$x_\textrm{history}=t\;\;\;\; y_\textrm{history} = e^t$$

history=@(t)[t; exp(t)]
%% 
% We define time interval

rvt=linspace(0,0.9,2^5)
%% 
% Finally, the algoritm is

sol=dde23(f,lags,history,rvt)
plot(sol.x,sol.y)
%% 
% we plot the result 
%% 
% Changed the equation, we have now
% 
% $$x\prime = x^2(t-0.2) + y^2(t-0.2) - 6x(t-0.5) - 8y(t-0.1)$$
% 
% $$y\prime (t) = x(t)[2y(t-0.2)-x(t)+5-2x\prime(t-0.1)]$$
% 
% We will solutionate this equation using ddensd algoritm, if we want to know 
% more about this algoritm, we can visit matlab documentation
%%
% 
%   doc ddensd
%
%% 
% We start defining the states equation, so
% 
% $$x(1) = x(t), \;\;\;\; x(2) = y(t)$$
% 
% In addition, dalay equation will are
% 
% $$z1 \to \textrm{Delay of state equation}\;\;\;\; z2 \to \textrm{Delay of 
% derivaties of state equation} $$
% 
% So, we writte the equation in code as

f=@(t,x,z1,z2)[z1(1,1)+(z1(2,1))^2-6*z1(1,2)-8*z1(1,3);...
               x(1)*(2*z1(2,1)-x(1)+5-2*z2(1,1))]
%% 
% Now, we define the delays and history equations

dy=[0.2;0.5;0.1]
dyp=[0.1]
history=@(t)[t; exp(t)]
rvt=linspace(0,2,2^7)
%% 
% We solucionate the system

sol=ddensd(f,dy,dyp,history,rvt)
plot(sol.x,sol.y)
%% 
%