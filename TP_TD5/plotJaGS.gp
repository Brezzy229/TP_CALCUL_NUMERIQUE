set grid
set pointintervalbox 3
set ylabel "logarithme décimal de la norme du vecteur résidu"
 
set xlabel "iterations"
 
plot "convergence_Ja.dat" with lines title "Jacobi","convergence_GS.dat" with lines title "Gauss-seidel", "epsilon.dat" with lines title "seuil de tolérence"

pause -1
 
