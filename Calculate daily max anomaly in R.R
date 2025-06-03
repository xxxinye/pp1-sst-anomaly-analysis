# Step 1: Get daily max values over the grid
daily_max <- apply(sst, 3, max, na.rm = TRUE)

# Step 2: Convert NetCDF time (in seconds since 1970-01-01)
time_vals <- ncvar_get(nc, "time")
time_converted <- as.POSIXct(time_vals, origin = "1970-01-01", tz = "UTC")
dates <- as.Date(time_converted)

# Step 3: Combine and export
df <- data.frame(date = dates, max_sst_anomaly = daily_max)

# Step 4: Write to CSV
write.csv(df, "daily_max_sst_anomaly_r.csv", row.names = FALSE)
