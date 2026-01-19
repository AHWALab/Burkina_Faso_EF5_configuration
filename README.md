# EF5 Burkina Faso Flash-Flood Monitoring & Forecasting — *Flash-Flood System for Burkina Faso* (Prototype)

This repository hosts the **code, configuration, and documentation** flash-flood monitoring and forecasting system over Burkina Faso using **EF5** (Ensemble Framework for Flash Flood Forecasting). The repo contains all **code and static assets**; **large, geospatial datasets** (e.g., high-resolution DEM tiles) are published and versioned on **Zenodo**.

> Project period: **June–December 2025** (demo portal maintained through June 2026)

---

### 1) Code & workflows (GitHub)
- `ef5/` – [**EF5**](https://github.com/AHWALab/EF5) configuration templates (CREST water balance, kinematic-wave routing, inundation/HAND blocks)
- `tito/` – [**TITO**](https://github.com/AHWALab/TITOCuba) (Threading Inputs To Outputs) orchestration scripts for data ingestion, pre/post-processing, and scheduling. Setup steps are available in the TITO repo linked.
- `docs/` – (TITO Docs)

### 2) Static data (Zenodo)
> The DEMs, parameters, and precomputed Data Assimilation files are too large to be shared on GitHub, so they are hosted on Zenodo.

Zenodo contains all the DEMs, parameters for 1km and 25m models, and also precomputed Data Assimilation CSV files: https://zenodo.org/records/17716930

---
