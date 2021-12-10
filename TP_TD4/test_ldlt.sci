exec("/home/slads/TP_CALCUL_NUMERIQUE/TP_TD4/LDLT.sci");
n1 = 200;
A = rand(n1,n1);
B = A*A'
tic()
[L,D] =  myldltscale(B);
t1 = toc();
