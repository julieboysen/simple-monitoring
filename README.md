# System Monitoring with Netdata

Basic system monitoring using Netdata and automatic load testing on a Linux system.

## Requirements

- Netdata for real-time monitoring
- stress-ng for generating CPU load

## Project Overview

1. **Install Netdata:**
   The `setup.sh` script installs the Netdata monitoring tool on a Linux system.

2. **Monitor System Metrics:**
   Netdata monitors basic system metrics such as CPU usage, memory usage, and disk I/O.

3. **Access the Dashboard:**
   After installing Netdata, access the monitoring dashboard via `http://<your-ip>:19999`.

4. **Simulate System Load:**
   The `test_dashboard.sh` script dynamically detects the number of CPU cores on the system using `nproc` and applies an 80% CPU load to test monitoring.

5. **Cleanup:**
   The `cleanup.sh` script removes the Netdata agent and cleans up the system after testing.

## Shell Scripts

### `setup.sh`

- Installs Netdata on a new system.

### `test_dashboard.sh`

- Detects available CPU cores using `nproc`.
- Applies an 80% load on all cores using `stress-ng` to test the Netdata dashboard.

### `cleanup.sh`

- Stops and removes Netdata from the system.

## How to Run

1. **Install Netdata:**

   ```
   sudo ./setup.sh
   ```

2. **Test the Dashboard:**

   ```
   sudo ./test_dashboard.sh
   ```

3. **Access the Netdata Dashboard:**
   Open your browser and open `http://<your-ip>:19999` to monitor the system.

4. **Cleanup:**
   ```
   sudo ./cleanup.sh
   ```

## Project Link

For more details about this project, visit the [Simple Monitoring Project](https://roadmap.sh/projects/simple-monitoring-dashboard).
