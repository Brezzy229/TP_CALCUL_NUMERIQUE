set grid
set pointintervalbox 3
set ylabel "logarithme décimal de la norme du vecteur résidu"
 
set xlabel "iterations"
 
plot "Richardson_alpha1.dat" with lines title "alpha = 0.25 ","Richardson_alpha_optimal.dat" with lines title "alpha=0.50","Richardson_alpha2.dat" with lines title "alpha = 0.52 ", "epsilon.dat" with lines title "seuil de tolérence"

pause -1 
