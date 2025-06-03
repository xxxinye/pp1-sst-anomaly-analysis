library(ncdf4)

nc <- nc_open("cmems_mod_glo_phy_anfc_0.083deg-sst-anomaly_P1D-m_1748935156905.nc")

# List all variables
print(nc$var)

# Extract sea surface temperature anomaly variable
sst <- ncvar_get(nc, "sea_surface_temperature_anomaly")

# Get dimensions (time, lat, lon)
time <- ncvar_get(nc, "time")
lat <- ncvar_get(nc, "latitude")
lon <- ncvar_get(nc, "longitude")

# Close the file when done
nc_close(nc)
