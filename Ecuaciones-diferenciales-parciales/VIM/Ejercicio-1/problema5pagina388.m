function [Lu, Nu, g] =problema5pagina388(un,variable_x,variable_t)
%  PROBLEMA5PAGINA388 calculo automatico de Lu, Nu y g para el problema 5 pagina 388
% 
% Detailed explanation of this function.
    Lu=diff(un,variable_t,1);
    Nu=un*diff(un,variable_x,1);
    g=0;
end