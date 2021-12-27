exec('/home/slads/TP_CALCUL_NUMERIQUE/TP_TD4/LDLT.sci', -1)
exec('/home/slads/TP_CALCUL_NUMERIQUE/TP_TD3/sys_triang/usolve.sci', -1)
exec('/home/slads/TP_CALCUL_NUMERIQUE/TP_TD3/sys_triang/lsolve.sci', -1)

function [x] = ldltsolve(A,b)
    y=ones(size(b,1),1);
    [L,D] =  myldltscale(A);
      [z] =  lsolve(L,b);
      [y] = inv(D)*z;
       [x] = usolve(L',y);
endfunction
