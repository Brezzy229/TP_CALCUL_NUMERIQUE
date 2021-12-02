exec('/home/slads/M1_HPCS/OBHPC/CalculNUmerique/TP_TD3/sys_triang/usolve.sci', -1);
function [x] = gausskij3b(A,b)
    n= size(A)(1);
    x = zeros(n,1)
    for k = 1: n-1
        for i = k+1 : n
            m(i,k) = A(i,k)./A(k,k);
            b(i) = b(i) - (m(i,k).*b(k));
            for j = k + 1:n
                A(i,j) = A(i,j) -( m(i,k) .*A(k,j));
            end
        end
    end
    x = usolve(A,b);
endfunction


