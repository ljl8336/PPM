
# Parametric Prior Mapping Framework for Non-stationary Probabilistic Time Series Forecasting

This repository contains the official implementation of **Parametric Prior Mapping Framework for Non-stationary Probabilistic Time Series Forecasting (PPM)**.

## News

📌 **[2026]** 🎉 PPM is accepted by ICML 2026.

## Introduction

PPM is a probabilistic forecasting framework designed for non-stationary time series. Instead of relying on an approximate posterior or iterative denoising process, PPM directly learns an input-conditioned parametric prior and pushes it forward through a generative mapping to obtain the predictive distribution.

The framework aims to provide accurate and efficient probabilistic forecasting, especially under non-stationary dynamics.

<img width="2223" height="883" alt="image" src="https://github.com/user-attachments/assets/4c6db43c-87e2-4ec4-98fe-b8ddc743805c" />



## Installation

Please install the required packages with:

```bash
pip install -r requirements.txt
```

## Data

Please place the datasets in `dataset/`.

## Usage

You can run the experiments using the scripts provided in `scripts/MLP/`.

For example:

```bash
bash scripts/MLP/ETTh1.sh
```

Please check the scripts for detailed configurations, including dataset name, prediction length, model settings, and training hyperparameters.

## 7. Contacts

For questions about the paper or code, please contact:

* Jinglin Li: [ljinglin8336@gmail.com](mailto:1603582578@qq.com)
* Jun Tan: [juntan.csu@gmail.com](mailto:juntan.csu@gmail.com)
* Qi Fang: [csqifang@csu.edu.cn](mailto:csqifang@csu.edu.cn)
* Ning Gui: [ninggui@gmail.com](mailto:ninggui@gmail.com)

## License

This project is released under the Apache License 2.0.

