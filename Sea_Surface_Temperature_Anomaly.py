import xarray as xr
import matplotlib.pyplot as plt
import numpy as np

# Open file
ds = xr.open_dataset("cmems_mod_glo_phy_anfc_0.083deg-sst-anomaly_P1D-m_1748935156905.nc")

# Print basic info
print(ds)

# Get the variable
sst = ds.sea_surface_temperature_anomaly

import pandas as pd
import matplotlib.pyplot as plt

# Step 1: Find max anomaly per day (over lat & lon)
daily_max = sst.max(dim=["latitude", "longitude"], skipna=True)

# Step 2: Create DataFrame with dates and daily max anomaly
df_max = pd.DataFrame({
    "date": daily_max.time.values,
    "max_sst_anomaly": daily_max.values
})

# Step 3: Save to CSV
df_max.to_csv("daily_max_sst_anomaly.csv", index=False)
print("Saved daily max SST anomalies to daily_max_sst_anomaly.csv")

# Step 4: Plot time series
plt.figure(figsize=(10,5))
plt.plot(df_max['date'], df_max['max_sst_anomaly'], marker='o')
plt.title('Daily Maximum Sea Surface Temperature Anomaly')
plt.xlabel('Date')
plt.ylabel('Max SST Anomaly (°C)')
plt.grid(True)
plt.xticks(rotation=45)
plt.tight_layout()
plt.show()
