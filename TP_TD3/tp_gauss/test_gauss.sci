exec("gausskij3b.sci");

A = [1,1,2;2,-1,2;4,1,4]
b = [-1;-4;-2]
xex_b = [1;2;-2]

C = [2,1,-2;1,1,4;7,5,1]
bc = [10;-9;14]
xex_c = [1;2;-3]

// calcul des x_u0
[x_b]= gausskij3b(A,b)
[x_c]= gausskij3b(C,bc)


// calcul des erreurs avant et arrière.

err_b    = norm(xex_b - x_b) ./  norm(xex_b)
err_c    = norm(xex_c - x_c) ./  norm(xex_c)

relres_b = norm(b - (A*x_b),2) ./ (norm(A) .* norm(x_b))
relres_c = norm(bc - (C*x_c),2) ./ (norm(C) .* norm(x_c))

// calcul du conditionnement de A
cond_A = cond(A)
prod_A = cond_A * relres_b


cond_C = cond(C)
prod_C = cond_C * relres_c

