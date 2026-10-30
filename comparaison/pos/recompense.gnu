set terminal pngcairo size 900,500 enhanced font "Arial,12"
set output "recompenses.png"

set title "PoS — Distribution des récompenses selon le taux de staking"
set xlabel "Identifiant du nœud"
set ylabel "Récompenses totales (ETH)"
set style fill solid 0.8 border -1
set boxwidth 0.3
set grid ytics
set key top right
set xtics 0,1,9

plot "POS_run1_stk0.1_pp0.05.dat" using 1:4 with boxes \
         lc rgb "#534AB7" title "Staking 10%", \
     "POS_run3_stk0.5_pp0.05.dat" using ($1+0.35):4 with boxes \
         lc rgb "#1D9E75" title "Staking 50%"