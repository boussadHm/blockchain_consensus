set terminal pngcairo size 900,600 enhanced font "Arial,12"
set output "noeuds.png"

set title "PoW — Impact du nombre de mineurs (difficulté=3)"
set xlabel "Nombre de nœuds"
set ylabel "Blocs par seconde" tc rgb "#534AB7"
set y2label "BTC distribués" tc rgb "#D85A30"

set ytics nomirror tc rgb "#534AB7"
set y2tics tc rgb "#D85A30"
set xrange [5:35]
set xtics ("10" 10, "20" 20, "30" 30)
set grid

plot "-" using 1:2 axes x1y1 title "Blocs/s" \
         lc rgb "#534AB7" lw 2 pt 7 ps 1.5 with linespoints, \
     "-" using 1:2 axes x1y2 title "BTC distribués" \
         lc rgb "#D85A30" lw 2 pt 9 ps 1.5 with linespoints
10 0.0600
20 0.0567
30 0.0300
e
10 59.375
20 56.250
30 31.250
e