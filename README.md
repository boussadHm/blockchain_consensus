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