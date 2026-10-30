set terminal pngcairo size 900,600 enhanced font "Arial,12"
set output "staking.png"

set title "PoS — Impact du taux de staking"
set xlabel "Taux de staking"
set ylabel "Nb validateurs actifs" tc rgb "#534AB7"
set y2label "Écart des récompenses (ETH)" tc rgb "#D85A30"

set ytics nomirror tc rgb "#534AB7"
set y2tics tc rgb "#D85A30"
set xrange [0.05:0.55]
set yrange [0:10]
set y2range [0:1.2]
set xtics ("0.10" 0.10, "0.30" 0.30, "0.50" 0.50)
set grid

plot "-" using 1:2 axes x1y1 title "Nb validateurs" \
         lc rgb "#534AB7" lw 2 pt 7 ps 1.5 with linespoints, \
     "-" using 1:2 axes x1y2 title "Écart récompenses" \
         lc rgb "#D85A30" lw 2 pt 9 ps 1.5 with linespoints
0.10 4
0.30 5
0.50 7
e
0.10 0.800
0.30 0.650
0.50 0.750
e