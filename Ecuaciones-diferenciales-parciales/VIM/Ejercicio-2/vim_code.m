function u_nmasuno = vim_code(un, Lu, Nu, g, lambda,variable,xi)
%  VIM_CODE The variational iteration method
   lu1=subs(Lu,variable,xi);
   nu1=subs(Nu,variable,xi);
   g1=subs(g,variable,xi);
   integralLu=int(lambda*lu1,xi,0,variable);
   integralNu=int(lambda*nu1,xi,0,variable);
   integralg=int(lambda*g1,xi,0,variable);
   u_nmasuno=un+integralLu+integralNu+integralg;
end