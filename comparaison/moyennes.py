import re
from statistics import mean  # pour calculer la moyenne simplement 

# Définir les fichiers par consensus
fichiers = {
    "POW": [
        "pow/donnees_POW_run1.dat",
        "pow/donnees_POW_run2.dat",
        "pow/donnees_POW_run3.dat",
    ],
    "POS": [
        "pos/donnees_POS_run1.dat",
        "pos/donnees_POS_run2.dat",
        "pos/donnees_POS_run3.dat",
    ],
    "PBFT": [
        "pbft/donnees_PBFT_run1.dat",
        "pbft/donnees_PBFT_run2.dat",
        "pbft/donnees_PBFT_run3.dat",
    ],
}

# Champs à extraire dans le bloc # STATS_GLOBALES
champs_cibles = ["throughput", "failures", "syncGap"]

def extraire_stats(filepath):
    """
    Lit un fichier .dat et renvoie un dict {champ: valeur_float}
    pour les champs throughput, failures, syncGap trouvés dans # STATS_GLOBALES.
    Format attendu des lignes :
    # throughput : 0.0833
    # failures : 1
    # syncGap : 8
    """
    stats = {}
    with open(filepath, "r", encoding="utf-8") as f:
        for line in f:
            line = line.strip()
            # On ne traite que les lignes de commentaires
            if not line.startswith("#"):
                continue

            # On enlève le # initial et on strip
            content = line[1:].strip()   # ex: "throughput : 0.0833"

            # On découpe sur " : "
            if " : " in content:
                name, value_str = content.split(" : ", 1)
                name = name.strip()       # ex: "throughput"
                value_str = value_str.strip()  # ex: "0.0833"

                if name in champs_cibles:
                    try:
                        stats[name] = float(value_str)
                    except ValueError:
                        pass

    return stats

# Calcul des moyennes
moyennes = {}

for consensus, files in fichiers.items():
    valeurs = {champ: [] for champ in champs_cibles}

    for path in files:
        stats = extraire_stats(path)
        for champ in champs_cibles:
            if champ in stats:
                valeurs[champ].append(stats[champ])

    # Calcul de la moyenne pour chaque champ
    moyennes_consensus = {}
    for champ in champs_cibles:
        if valeurs[champ]:
            moyennes_consensus[champ] = mean(valeurs[champ])
        else:
            moyennes_consensus[champ] = 0.0

    moyennes[consensus] = moyennes_consensus

# Écriture du fichier de sortie pour Gnuplot
with open("comparaison_moyennes.dat", "w", encoding="utf-8") as out:
    out.write("# consensus meanThroughput meanFailures meanSyncGap\n")
    for consensus in ["POW", "POS", "PBFT"]:
        m = moyennes[consensus]
        out.write(
            f"{consensus} "
            f"{m['throughput']:.6f} "
            f"{m['failures']:.3f} "
            f"{m['syncGap']:.3f}\n"
        )

print("Fichier comparaison_moyennes.dat généré avec succès.")