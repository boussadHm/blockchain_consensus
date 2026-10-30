set terminal pngcairo size 900,600 enhanced font "Arial,12"
set output "probaPanne_pbft.png"

set title "PBFT — Impact de l'instabilité réseau (n=10, mandat=60s)"
set xlabel "Probabilité de panne"
set ylabel "Throughput (blocs/s)" tc rgb "#534AB7"
set y2label "Taux de rejet" tc rgb "#E24B4A"

set ytics nomirror tc rgb "#534AB7"
set y2tics tc rgb "#E24B4A"
set xrange [-0.02:0.35]
set yrange [0:0.025]
set y2range [0:4]
set xtics ("0.05" 0.05, "0.15" 0.15, "0.30" 0.30)
set grid

plot "-" using 1:2 axes x1y1 title "Throughput" \
         lc rgb "#534AB7" lw 2 pt 7 ps 1.5 with linespoints, \
     "-" using 1:2 axes x1y2 title "Taux rejet" \
         lc rgb "#E24B4A" lw 2 pt 9 ps 1.5 with linespoints
0.05  0.0140
0.15  0.0020
0.30  0.0020
e
0.05  0.0000
0.15  0.0000
0.30  3.5000
e