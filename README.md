# EF5 Burkina Faso Flash-Flood Monitoring & Forecasting — *Flash-Flood System for Burkina Faso* (Prototype)

This repository hosts the **configuration and documentation** for the flash-flood monitoring and forecasting system over Burkina Faso using **EF5** (Ensemble Framework for Flash Flood Forecasting).

> Project period: **June–December 2025** (demo portal maintained through June 2026)

---

### 1) Workflows (GitHub)
- [**EF5**](https://github.com/AHWALab/EF5) – configuration templates (CREST water balance, kinematic-wave routing, inundation/HAND blocks)
- [**TITO**](https://github.com/AHWALab/TITOBurkina_Faso) – (Threading Inputs To Outputs) orchestration scripts for data ingestion, pre/post-processing, and scheduling. Setup steps are available in the TITO repo linked.

### 2) Static data (this repository)

All DEMs, parameters, and precomputed Data Assimilation files are hosted here on GitHub under `EF5_setup_v2/`:

| File | Description |
|------|-------------|
| `EF5_setup_v2/basic.zip` | DEMs – digital elevation model, flow accumulation, and flow direction grids |
| `EF5_setup_v2/crestParam.zip` | CREST parameters – distributed parameter grids for the CREST water-balance model |
| `EF5_setup_v2/kwParameters.zip` | KW parameters – distributed parameter grids for kinematic-wave routing |

---
