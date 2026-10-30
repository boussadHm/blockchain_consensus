set terminal pngcairo size 900,600 enhanced font "Arial,12"
set output "nbNoeuds_pbft.png"

set title "PBFT — Impact du nombre de nœuds (mandat=60s, pp=0.05)"
set xlabel "Nombre de nœuds"
set ylabel "Throughput (blocs/s)" tc rgb "#534AB7"
set y2label "Blocs validés" tc rgb "#1D9E75"

set ytics nomirror tc rgb "#534AB7"
set y2tics tc rgb "#1D9E75"
set xrange [5:40]
set yrange [0:0.06]
set y2range [0:35]
set xtics ("10" 10, "15" 15, "20" 20, "30" 30, "35" 35, "40" 40)
set grid

plot "-" using 1:2 axes x1y1 title "Throughput" \
         lc rgb "#534AB7" lw 2 pt 7 ps 1.5 with linespoints, \
     "-" using 1:2 axes x1y2 title "Blocs validés" \
         lc rgb "#1D9E75" lw 2 pt 9 ps 1.5 with linespoints
10  0.0140
15  0.0260
20  0.0340
30  0.0360
35  0.0320
e
10  0
15  12
20  18
30  23
35  31
e