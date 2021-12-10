exec("/home/slads/TP_CALCUL_NUMERIQUE/TP_TD4/Cholesky.sci");

n1 = 500;
A = rand(n1,n1);
B = A*A'
tic()
L1 = cholesky(B);
t1 = toc();
