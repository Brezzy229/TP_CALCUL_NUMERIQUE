function [L,D] = myldlt(A)
    n = size(A,1);
    
    for j = 1:n
        A(j,j) = A(j,j) - A(j,1:j-1)*(A(j,1:j-1)*((diag(diag(A)))(1:j-1,1:j-1)))';
        A(j+1:n,j) = (A(j+1:n,j) - A(j+1:n, 1:j-1)*(A(j,1:j-1)*((diag(diag(A)))(1:j-1,1:j-1)))')/A(j,j);
    end
    D = diag(diag(A));
    L = tril(A) - D + eye(n,n);
endfunction
