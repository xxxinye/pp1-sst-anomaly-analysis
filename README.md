# Sea Surface Temperature Anomaly Analysis (May 2025)

This is a small beginner project exploring [sea surface temperature (SST) anomalies] using daily data from the [Copernicus Marine Service]. It combines both [Python] and [R] to analyze and visualize ocean temperature variation for Southeast Asia.

This project was developed with AI-assisted guidance, as part of personal learning.

---

## Project Structure

sea surface temperature anomalies/
├── data/
│ └── cmems_mod_glo_phy_anfc_*.nc # Raw NetCDF data from Copernicus
├── scripts/
│ ├── Sea_Surface_Temperature_Anomaly.py         # Python script used in PyCharm for initial data exploration
│ ├── load_netcdf_in_r.R                         # R script to load NetCDF file
│ ├── calculate_daily_max_r.R                    # R script to compute daily max SST anomaly
│ └── plot_data_r.R                              # R script for visualization
├── outputs/
│ ├── daily_max_sst_anomaly_python.csv           # Max grid anomaly (daily) from Python
│ └── daily_max_sst_anomaly_r.csv                # Max grid anomaly (daily) from R
└── README.md

---

## Data Source

**Product:** `GLOBAL_ANALYSISFORECAST_PHY_001_024`  
**Variable:** `sea_surface_temperature_anomaly`  
**Time Range:** 2025-05-01 to 2025-05-31  
**Format:** NetCDF (.nc)  
**Region:** Southeast Asia

	⚠️ Note: The bounding box was drawn manually and does not follow any precise geographic or political boundaries. You are encouraged to define your own region of interest based on your project goals or study area.

Downloaded from: [Copernicus Marine Data Store](https://marine.copernicus.eu)

---

## Goals

1. Identify which day in May 2025 had the highest SST anomaly.
2. For each day, extract the **maximum anomaly value** across the spatial grid.
3. Visualize anomaly changes over time.
4. Practice working with `xarray`, `numpy`, and NetCDF in R.

---

## Methods

### Python
- Used `xarray` to load and process NetCDF.
- Extracted **daily maximum anomalies** across all grid points.
- Exported results to `daily_max_sst_anomaly_python.csv`.

### R
- Used `ncdf4` to load NetCDF.
- Converted raw time units into readable dates.
- Recomputed daily max anomaly values for verification.

---

## Visualization

Basic line plots were created in both Python and R to inspect changes in SST anomaly over time.

---

## How to Reproduce

1. Download a similar NetCDF file from Copernicus Marine Service.
2. Replace the filename in `scripts/sst_analysis_python.ipynb`.
3. Run the notebook or R script.
4. Compare and visualize your results.

---

## Skills Practiced

- Remote sensing data handling
- `xarray`, `pandas`, and `matplotlib` (Python)
- `ncdf4` and basic tidyverse tools (R)
- Working across R and Python in a single analysis workflow
- Creating reproducible, structured GitHub projects

---

## Contact

For dataset issues, refer to [Copernicus Marine Support](mailto:servicedesk.cmems@mercator-ocean.eu)
