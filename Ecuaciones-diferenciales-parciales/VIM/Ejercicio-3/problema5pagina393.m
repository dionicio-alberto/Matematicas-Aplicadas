function [Lu, Nu, g] =problema5pagina393(un,variable_x,variable_t)
%  PROBLEMA5PAGINA393 calculo automatico de Lu, Nu y g para el problema 5 pagina 393
% 
% Detailed explanation of this function.
    Lu=diff(un,variable_x,2);
    Nu=-2*diff(un,variable_t,2)-3*diff(un,variable_t,1)-un;
    g=0;
end