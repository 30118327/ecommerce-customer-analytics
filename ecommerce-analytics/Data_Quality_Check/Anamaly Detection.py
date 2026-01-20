# Detecting anamalous order amounts and broken referential integrity in fact_orders

# Z-Score–Based Anomaly Detection

import numpy as np

def detect_anomalies(order_amounts):
    mean = np.mean(order_amounts)
    std = np.std(order_amounts)

    anomalies = [
        amt for amt in order_amounts
        if abs((amt - mean) / std) > 3
    ]

    if anomalies:
        print(f"Anomalies detected: {anomalies}")
        print("Suggestion: Verify against average product price or flag for manual review.")


### Anomaly Detection (Z-Score)
# Calculates the mean and standard deviation of order amounts.
# Flags orders where the amount deviates more than 3 standard deviations from the mean.
# Prevents outliers due to data entry errors or duplicate records.

