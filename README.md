[🇫🇷 Français](#simulation-des-mécanismes-de-consensus-de-la-blockchain) | [🇺🇸 English](#blockchain-consensus-mechanisms-simulation)
# Blockchain Consensus Mechanisms Simulation

## Project Overview

This project focuses on the modeling, simulation, and comparison of three blockchain consensus mechanisms using **AnyLogic 8.9.6**.

The objective is to study how distributed nodes communicate, validate blocks, handle network failures, and reach consensus in a decentralized environment.

The project implements three consensus mechanisms:

- **Proof of Work (PoW):** blockchain mining and block validation based on computational difficulty.
- **Proof of Stake (PoS):** validator selection and block validation based on staking.
- **Practical Byzantine Fault Tolerance (PBFT):** distributed consensus through message exchanges between nodes and a rotating leader.

## Implemented Models

The AnyLogic project contains three simulation models:

| Model | Consensus mechanism |
|---|---|
| `Blockchain` | Proof of Work (PoW) |
| `PoS` | Proof of Stake |
| `PBFT` | Practical Byzantine Fault Tolerance |

All three models are included in the same AnyLogic project file: `main/PBFT.alp`.

## Features

- Agent-based modeling of a distributed blockchain network.
- Node communication and message propagation.
- Block validation and consensus mechanisms.
- Simulation of network failures and malicious behaviors.
- Leader rotation and multi-phase consensus in PBFT.
- Experimental analysis and comparison of the three mechanisms.

## Experimental Analysis

Simulation data and analysis tools are organized in the `comparaison/` directory.

This directory includes:

- Experimental data files (`.dat`).
- Gnuplot scripts (`.gnu`) for generating graphs.
- A Python script (`moyennes.py`) for processing and comparing average results.
- Generated graphs illustrating the experimental results.

The experiments study different parameters, including mining difficulty, staking ratio, node count, failure probability, and PBFT leader mandate duration.

## Project Structure

```text
.
├── README.md
├── main/
│   ├── PBFT.alp
│   └── 3d/
├── comparaison/
│   ├── pow/
│   ├── pos/
│   ├── pbft/
│   ├── moyennes.py
│   └── compare.gnu
└── docs/
    ├── rapport.md
    └── img/
```

## Getting Started

### Requirements

- AnyLogic 8.9.6 or a compatible version.
- Python 3 (for data analysis).
- Gnuplot (for generating experimental graphs).

### Running the simulations

1. Clone or download this repository.
2. Open AnyLogic.
3. Open `main/PBFT.alp`.
4. Select one of the three models: `Blockchain`, `PoS`, or `PBFT`.
5. Run the corresponding simulation experiment.

### Reproducing the analysis

The `comparaison/` directory contains the experimental data and scripts used to generate the comparison graphs.

Python and Gnuplot are required to reproduce the corresponding analyses.

## Documentation

The complete report provides detailed explanations of the modeling process, implementation choices, simulation scenarios, experimental results, and comparison of the three consensus mechanisms.

See the [full project report](docs/rapport.md).

## Technologies

- AnyLogic 8.9.6
- Python
- Gnuplot
- Agent-Based Modeling
- Blockchain
- Distributed Systems
- Consensus Algorithms

## Authors

- **Boussad HAMMOUM**
- **Hocine HAMAMA**

Master's Degree in Computer Science – IWOCS  
Université Le Havre Normandie  
Academic Year 2025–2026

---

# Simulation des mécanismes de consensus de la blockchain

## Présentation du projet

Ce projet est consacré à la modélisation, la simulation et la comparaison de trois mécanismes de consensus de la blockchain à l'aide d'**AnyLogic 8.9.6**.

L'objectif est d'étudier comment des nœuds distribués communiquent, valident des blocs, gèrent les pannes réseau et parviennent à un consensus au sein d'un environnement décentralisé.

Le projet implémente trois mécanismes de consensus :

- **Proof of Work (PoW) / Preuve de travail :** minage de blocs et validation basés sur la difficulté de calcul.
- **Proof of Stake (PoS) / Preuve d'enjeu :** sélection des validateurs et validation des blocs basées sur le staking (mise en jeu).
- **Practical Byzantine Fault Tolerance (PBFT) :** consensus distribué via des échanges de messages entre les nœuds et un leader rotatif.

## Modèles implémentés

Le projet AnyLogic regroupe trois modèles de simulation :

| Modèle | Mécanisme de consensus |
|---|---|
| `Blockchain` | Proof of Work (PoW) |
| `PoS` | Proof of Stake |
| `PBFT` | Practical Byzantine Fault Tolerance |

Ces trois modèles sont inclus dans le même fichier de projet AnyLogic : `main/PBFT.alp`.

## Fonctionnalités

- Modélisation multi-agents d'un réseau blockchain distribué.
- Communication entre nœuds et propagation des messages.
- Validation des blocs et mécanismes de consensus.
- Simulation de pannes réseau et de comportements malveillants.
- Rotation du leader et consensus multi-phase pour le PBFT.
- Analyse expérimentale et comparaison comparative des trois mécanismes.

## Analyse expérimentale

Les données de simulation et les outils d'analyse sont regroupés dans le dossier `comparaison/`.

Ce dossier contient :

- Des fichiers de données expérimentales (`.dat`).
- Des scripts Gnuplot (`.gnu`) pour la génération de graphiques.
- Un script Python (`moyennes.py`) pour le traitement des données et le calcul des moyennes.
- Les graphiques générés illustrant les résultats expérimentaux.

Les expériences étudient différents paramètres, notamment la difficulté de minage, le taux de staking, le nombre de nœuds, la probabilité de panne et la durée du mandat du leader PBFT.

## Structure du projet

```text
.
├── README.md
├── main/
│   ├── PBFT.alp
│   └── 3d/
├── comparaison/
│   ├── pow/
│   ├── pos/
│   ├── pbft/
│   ├── moyennes.py
│   └── compare.gnu
└── docs/
    ├── rapport.md
    └── img/
```
## Prise en main

### Prérequis

- AnyLogic 8.9.6 ou une version compatible.
- Python 3 (pour l'analyse des données).
- Gnuplot (pour la génération des graphiques expérimentaux).
  
### Lancement des simulations

1. Clonez ou téléchargez ce dépôt.
2. Ouvrez AnyLogic.
3. Ouvrez le fichier main/PBFT.alp.
4. Sélectionnez l'un des trois modèles : Blockchain, PoS ou PBFT.
5. Exécutez l'expérience de simulation correspondante.

### Reproduction de l'analyse
Le dossier `comparaison/` contient l'ensemble des données expérimentales et des scripts nécessaires pour reproduire les graphiques comparatifs.
Python et Gnuplot sont requis pour exécuter les analyses.

## Documentation

Le rapport complet détaille la démarche de modélisation, les choix d'implémentation, les scénarios de simulation, les résultats expérimentaux ainsi que l'analyse comparative des trois mécanismes.

Consulter le [rapport complet du projet](docs/rapport.md).

## Technologies utilisées

- AnyLogic 8.9.6
- Python
- Gnuplot
- Modélisation multi-agents 
- Blockchain
- Systèmes distribués
- Algorithmes de consensus

## Auteurs

- **Boussad HAMMOUM**
- **Hocine HAMAMA**

Master 1 Informatique – IWOCS  
Université Le Havre Normandie  
Année universitaire 2025–2026
