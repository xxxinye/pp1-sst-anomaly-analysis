library(ggplot2)

ggplot(df, aes(x = date, y = max_sst_anomaly)) +
  geom_line() +
  geom_point() +
  labs(title = "Daily Maximum Sea Surface Temperature Anomaly",
       x = "Date",
       y = "Max SST Anomaly (°C)") +
  theme_minimal()
