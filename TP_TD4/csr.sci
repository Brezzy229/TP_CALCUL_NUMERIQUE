function [v] = csrmatvec (AA,JA,IA,x)
    n= size(IA,2)-1;
    v = zeros(n,1);
    for i = 1 : n
       k0 = IA(i);
       k1 = IA(i+1)-1;
       for k = k0 : k1
           j = JA(k);
           v(i)=v(i) + AA(k) * x(j);
        end
           
    end
endfunction
