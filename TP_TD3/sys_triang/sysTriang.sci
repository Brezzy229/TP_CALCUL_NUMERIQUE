exec("usolve.sci");
exec("lsolve.sci");
n = 20
//A = [1,-7,11;-1,12,-19;0,-3,5];
A = rand(n,n);
b = rand(n,1);
//D = diag(diag(ones(size(A)(1),size(A)(1))));
//L = tril(A) - diag(diag(A)) + D;
[L] = tril(A);
[U] = triu(A);


[x_u0]= lsolve(L,b)
//[x_l0] = lsolve(L,b)

[x_u1] = L\b;
[x_u1_ns] = inv(L)*b;
//[x_l1] = L\b;

// erreurs avant
err_l = norm((x_u1 - x_u0,2))/norm(x_u1,2)
err_l_ns = norm((x_u1_ns - x_u0,2))/norm(x_u1_ns,2)
//err_l = norm((x_l1 - x_l0,2))/norm(x_l1,2)

cond_L = cond(L);
//cond_L = cond(L);
//erreurs arrières 
relres_u = norm(b - (L*x_u0),2) / (norm(L,2) * norm(x_u0,2));
//relres_l = norm(b - (L*x_l0),2) / (norm(L,2) * norm(x_l0,2));
