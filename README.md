# Setup for Data Science

### Repository Structure

    ├── LICENSE
    ├── README.md
    ├── install_cmake_3.29.sh
    ├── install_python38.sh
    └── lightgbm_setup
        └── install_lightgbm_gpu.sh

## LightGBM GPU Installation and Performance Testing for Data Science

This repository provides scripts to install LightGBM with GPU support, set up Python 3.8, and test performance for data science tasks. These tools can be especially helpful for data science competitions.


## Prerequisites

- NVIDIA GPU with CUDA support.
- A working internet connection for downloading dependencies.

## Installation Guide

### Step 1: Install Python 3.8

Run the following script to install Python 3.8:

```bash
chmod +x install_python38.sh
./install_python38.sh
```
### Step 2: Install CMake 3.29
Ensure you have CMake 3.29 installed as it is required for building LightGBM:

```bash
chmod +x install_cmake_3.29.sh
./install_cmake_3.29.sh
```

### Step 3: Install LightGBM with GPU Support
Finally, install LightGBM with GPU support:

```bash
chmod +x install_lightgbm_gpu.sh
./install_lightgbm_gpu.sh
```

### Usage in Data Science Competitions
LightGBM with GPU support can significantly speed up model training and hyperparameter tuning in data science competitions, allowing you to iterate faster and achieve better results.

###  Contributing
Contributions are welcome! Please submit a pull request or open an issue for any improvements or bug fixes.
