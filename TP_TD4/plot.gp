set grid
set pointintervalbox 3
set ylabel "Solution aux differentes itérations"
 
set xlabel "iterations"
 
plot "temps_chol.dat" using 1:2 with lines title "cholesky","temps_lu.dat" using 1:2 with lines title "LU", "temps_ldlt.dat" using 1:2 with lines title "LDLT"

pause -1 
