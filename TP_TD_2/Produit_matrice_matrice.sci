exec("matmat3b.sci");
exec("matmat2b.sci");
exec("matmat1b.sci");
// n = 10
A10 = rand(10,10);
B10 = rand(10,10);

tic()
C10_3 = matmat3b(A10,B10);
t13 = toc();

tic()
C10_2 = matmat2b(A10,B10);
t12 = toc();

tic()
C10_1 = matmat1b(A10,B10);
t11 = toc();

// m = 10 , n = 4 , p = 8
A10_4 = rand(10,4);
B4_8  = rand (4,8);


tic()
C10_8_3 =  matmat3b(A10_4,B4_8); 
t23 = toc();


tic()
C10_8_2 =  matmat2b(A10_4,B4_8);
t22 = toc();

tic()
C10_8_1 =  matmat1b(A10_4,B4_8);
t21 = toc();

// n = 100
A100 = rand(100,100);
B100 = rand(100,100);

tic()
C100_3 =  matmat3b(A100,B100);
t33 = toc ();

tic()
C100_2 =  matmat2b(A100,B100);
t32 = toc ();


tic()
C100_1 =  matmat1b(A100,B100);
t31 = toc();


// m = 100, n = 20, p = 80
A100_20  = rand (100,20);
B20_80   = rand (20,80);

tic()
C100_80_3 =  matmat3b(A100_20,B20_80);
t43 = toc();

tic()
C100_80_2 =  matmat2b(A100_20,B20_80);
t42 = toc();

tic()
C100_80_1 =  matmat1b(A100_20,B20_80);
t41 = toc();

// n = 1000
A1000 = rand(1000,1000);
B1000 = rand(1000,1000);

tic()
C1000_3 =  matmat3b(A1000,B1000);
t53 = toc();

tic()
C1000_2 =  matmat2b(A1000,B1000);
t52 = toc();


tic()
C1000_1 =  matmat1b(A1000,B1000);
t51= toc();



// n = 1100
A1000 = rand(1400,1400);
B1000 = rand(1400,1400);

tic()
C1000_3 =  matmat3b(A1000,B1000);
t53 = toc();

tic()
C1000_2 =  matmat2b(A1000,B1000);
t52 = toc();


tic()
C1000_1 =  matmat1b(A1000,B1000);
t51= toc();

// m = 1000, n = 200, p = 800
A1000_200  = rand (1000,200);
B200_800   = rand (200,800);

tic()
C1000_800_3 =  matmat3b(A1000_200,B200_800);
t63 = toc();

tic()
C1000_800_2 =  matmat2b(A1000_200,B200_800);
t62= toc();

tic()
C1000_800_1 =  matmat1b(A1000_200,B200_800);
t61 = toc();
