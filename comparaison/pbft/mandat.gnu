set terminal pngcairo size 900,600 enhanced font "Arial,12"
set output "mandat.png"

set title "PBFT — Impact de la durée du mandat du leader"
set xlabel "Durée du mandat (s)"
set ylabel "Throughput (blocs/s)" tc rgb "#534AB7"
set y2label "Rounds complétés" tc rgb "#D85A30"

set ytics nomirror tc rgb "#534AB7"
set y2tics tc rgb "#D85A30"
set xrange [20:110]
set yrange [0:0.03]
set y2range [0:25]
set xtics ("30" 30, "60" 60, "100" 100)
set grid

plot "-" using 1:2 axes x1y1 title "Throughput" \
         lc rgb "#534AB7" lw 2 pt 7 ps 1.5 with linespoints, \
     "-" using 1:2 axes x1y2 title "Rounds" \
         lc rgb "#D85A30" lw 2 pt 9 ps 1.5 with linespoints
30  0.0180
60  0.0140
100 0.0220
e
30  20
60  19
100 19
e