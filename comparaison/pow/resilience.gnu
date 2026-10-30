set terminal pngcairo size 900,600 enhanced font "Arial,12"
set output "resilience.png"

set title "PoW — Résilience face aux perturbations (diff=3, 10 nœuds, 500s)"
set xlabel "Scénario"
set ylabel "Nombre d'événements"

set style data histograms
set style histogram clustered gap 1
set style fill solid 0.8 border -1
set xtics ("Sans perturbation" 0, "Fork activé" 1, "Fork+attaque" 2)
set grid ytics
set key top right

set ytics 10   # tous les 10


plot "-" using 2:xtic(1) title "Forks détectés" lc rgb "#E24B4A", \
     "-" using 2:xtic(1) title "Blocs rejetés" lc rgb "#BA7517"
"Sans perturbation" 4
"Fork activé" 64
"Fork + attaque" 38
e
"Sans perturbation" 9
"Fork activé" 0
"Fork + attaque" 4
e