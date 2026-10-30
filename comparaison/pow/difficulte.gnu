set terminal pngcairo size 900,600 enhanced font "Arial,12"
set output "difficulte.png"

set title "PoW — Impact de la difficulté sur la production de blocs"
set xlabel "Difficulté"
set ylabel "Blocs par seconde" tc rgb "#534AB7"
set y2label "Écart entre chaînes" tc rgb "#1D9E75"

set ytics nomirror tc rgb "#534AB7"
set y2tics tc rgb "#1D9E75"
set y2range [0:100]
set xrange [1.5:4.5]
set xtics 1
set grid

plot "-" using 1:2 axes x1y1 title "Blocs/s" \
         lc rgb "#534AB7" lw 2 pt 7 ps 1.5 with linespoints, \
     "-" using 1:2 axes x1y2 title "Écart chaînes" \
         lc rgb "#1D9E75" lw 2 pt 9 ps 1.5 with linespoints
2 0.7367
3 0.0600
4 0.0067
e
2 82
3 5
4 1
e