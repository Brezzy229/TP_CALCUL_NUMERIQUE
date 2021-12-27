exec('/home/slads/TP_CALCUL_NUMERIQUE/TP_TD4/Cholesky.sci', -1)
exec('/home/slads/TP_CALCUL_NUMERIQUE/TP_TD3/sys_triang/usolve.sci', -1)
exec('/home/slads/TP_CALCUL_NUMERIQUE/TP_TD3/sys_triang/lsolve.sci', -1)

function[x] = cholsolve(A,b)
    y=ones(size(b,1),1);
    L =  cholesky(A);
    y = lsolve(L,b);
    x = usolve(L',y);
endfunction
