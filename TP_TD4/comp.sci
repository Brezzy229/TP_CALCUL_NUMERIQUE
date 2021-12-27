exec('/home/slads/TP_CALCUL_NUMERIQUE/TP_TD4/ldltsolve.sci', -1);
exec('/home/slads/TP_CALCUL_NUMERIQUE/TP_TD4/cholsolve.sci', -1);
exec('/home/slads/TP_CALCUL_NUMERIQUE/TP_TD3/mylu3b_opt.sci', -1);
exec('/home/slads/TP_CALCUL_NUMERIQUE/TP_TD4/lusolve.sci', -1);

n = 1100
A = rand(n,n);
B = A*A';
xex = rand(n,1);
b = B*xex;

tic()
x1 = cholsolve(B,b);
t_chol = toc();

tic()
x2 = ldltsolve(B,b);
t_ldlt = toc();

tic()
x3 = lu_solve(B,b);
t_lu = toc();

// calcul des erreurs avant et arrière. cholesky

err_chol    = norm(xex - x1,2) ./  norm(x1,2);

relres_chol = norm(b - (B*x1),2) ./ (norm(B,2) .* norm(x1,2));

// calcul des erreurs avant et arrière. ldlt

err_ldlt    = norm(xex - x2,2) ./  norm(x2,2);
relres_ldlt = norm(b - (B*x2),2) ./ (norm(B,2) .* norm(x2,2));

// calcul des erreurs avant et arrière lu

err_lu    = norm(xex - x3,2) ./  norm(x3,2);

relres_lu = norm(b - (B*x3),2) ./ (norm(B,2) .* norm(x3,2));

// calcul du conditionnement de B
cond = cond(B);

prod_chol = cond * relres_chol;
prod_ldlt = cond * relres_ldlt; 
prod_lu   = cond * relres_lu;




