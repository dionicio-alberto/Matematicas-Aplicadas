function [Lu, Nu, g] =problema10pagina388(un,variable_x,variable_t)
%  PROBLEMA10PAGINA388 calculo automatico de Lu, Nu y g para el problema 10 pagina 388
% 
% Detailed explanation of this function.
    Lu=diff(un,variable_x,2);
    Nu=-un*diff(un,variable_x,1)-diff(un,variable_t,1);
    g=0;
end