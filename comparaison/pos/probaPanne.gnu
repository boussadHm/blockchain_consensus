set terminal pngcairo size 900,600 enhanced font "Arial,12"
set output "probaPanne.png"

set title "PoS — Impact de l'instabilité réseau"
set xlabel "Probabilité de panne"
set ylabel "Blocs par seconde" tc rgb "#534AB7"
set y2label "Écart entre chaînes" tc rgb "#E24B4A"

set ytics nomirror tc rgb "#534AB7"
set y2tics tc rgb "#E24B4A"
set xrange [-0.02:0.55]
set yrange [0:0.12]
set y2range [0:25]
set xtics ("0.05" 0.05, "0.15" 0.15, "0.30" 0.30, "0.50" 0.50)
set grid

plot "-" using 1:2 axes x1y1 title "Blocs/s" \
         lc rgb "#534AB7" lw 2 pt 7 ps 1.5 with linespoints, \
     "-" using 1:2 axes x1y2 title "Écart chaînes" \
         lc rgb "#E24B4A" lw 2 pt 9 ps 1.5 with linespoints
0.05 0.0820
0.15 0.0780
0.30 0.0640
0.50 0.06
e
0.05 0
0.15 0
0.30 17
0.5 14
e