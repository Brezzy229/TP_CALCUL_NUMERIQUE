
// --------------- Cas n = 3 -------------------------------

// 1 Matrice A de taille 3* 3 en utilisant la fonction rand()
A_1 = rand(3,3)


// 2 Vecteur colonne xex avec rand()
xex_1 = rand(3,1)
size(xex_1)

//  b = A*xex

b_1 = A_1 *xex_1

// Résolution du système Ax = b 

xex1_estime = A_1\b_1

// calcul des erreurs avant et arrière.

err_1    = norm(xex_1 - xex1_estime) ./  norm(xex_1)

relres_1 = norm(b_1 - (A_1*xex1_estime),2) ./ (norm(A_1) .* norm(xex1_estime))

// calcul du conditionnement de A
cond_1 = cond(A_1)

prod_1 = cond_1 * relres_1


/*
//--------------------Cas n = 100 ----------------------

// 1 Matrice A de taille 3* 3 en utilisant la fonction rand()
A_2 = rand(100,100);

// 2 Vecteur colonne xex avec rand()
xex_2 = rand(100,1);
size(xex_2)

//  b = A*xex

b_2 = A_2 *xex_2;

// Résolution du système Ax = b 

xex2_estime = A_2\b_2;

// calcul des erreurs avant et arrière.

err_2    = norm(xex_2 - xex2_estime) ./ norm(xex_2)

relres_2 = norm(b_2 - (A_2*xex2_estime),2) ./ (norm(A_2,2) .* norm(xex2_estime,2))

// calcul du conditionnement de A
cond_2 = cond(A_2)


//-----------------------cas n = 1000 -------------------
// 1 Matrice A de taille 3* 3 en utilisant la fonction rand()
A_3 = rand(1000,1000)

// 2 Vecteur colonne xex avec rand()
xex_3 = rand(1000,1)
size(xex_3)

//  b = A*xex

b_3 = A_3 *xex_3

// Résolution du système Ax = b 

xex3_estime = A_3\b_3

// calcul des erreurs avant et arrière.

err_3    = norm(xex_3 - xex3_estime) ./ norm(xex_3)

relres_3 = norm(b_3 - (A_3*xex3_estime),2) ./ (norm(A_3,2) .* norm(xex3_estime,2))

// calcul du conditionnement de A
cond_3 = cond(A_3)


//------------------cas n = 10000 -------------------
// 1 Matrice A de taille 3* 3 en utilisant la fonction rand()
A_4 = rand(10000,10000);

// 2 Vecteur colonne xex avec rand()
xex_4 = rand(10000,1);
size(xex_4);

//  b = A*xex

b_4 = A_4 *xex_4;

// Résolution du système Ax = b 

xex4_estime = A_4\b_4;

// calcul des erreurs avant et arrières.

err_4    = norm(xex_4 - xex4_estime) / norm(xex_4);

relres_4 = norm(b_4 - (A_4*xex4_estime),2) / (norm(A_4,2) * norm(xex4_estime,2));

// calcul du conditionnement de A

cond_4 = cond(A_4);
prod_4 = cond_4 * relres_4
*/
