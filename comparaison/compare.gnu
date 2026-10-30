set terminal pngcairo size 1400,900 enhanced font "Arial,12"
set output "comparaison_consensus_moyenne.png"

set datafile separator whitespace
set key outside
set grid ytics

set multiplot layout 1,3 title "Comparaison moyenne des consensus"

set style data histograms
set style fill solid 0.8 border -1
set boxwidth 0.6

set title "Throughput moyen"
set ylabel "Blocs par seconde"
plot "comparaison_moyennes.dat" using 2:xtic(1) title "Throughput"

set title "Pannes moyennes (failures)"
set ylabel "Noeuds hors ligne"
plot "comparaison_moyennes.dat" using 3:xtic(1) title "Failures"

set title "Décalage de chaîne (syncGap)"
set ylabel "Différence max de hauteur"
plot "comparaison_moyennes.dat" using 4:xtic(1) title "SyncGap"

unset multiplot
unset output