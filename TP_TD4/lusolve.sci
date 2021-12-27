exec('/home/slads/TP_CALCUL_NUMERIQUE/TP_TD3/mylu3b_pivot.sci', -1);
exec('/home/slads/TP_CALCUL_NUMERIQUE/TP_TD3/sys_triang/usolve.sci', -1);
exec('/home/slads/TP_CALCUL_NUMERIQUE/TP_TD3/sys_triang/lsolve.sci', -1);

function[x] = lu_solve(A,b)
    y=ones(size(b,1),1);
    [L,U] =   mylu_pivot(A);
    y = lsolve(L,b);
    x = usolve(U,y);
endfunction
