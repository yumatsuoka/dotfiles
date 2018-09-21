#!/bin/bash

pip install pip -U
pip list --outdated --format=legacy | awk '{print $1}' | xargs pip install -U

pip install tqdm
pip install seaborn
pip install cudnnenv
pip install lopq
cudnnenv install v5-cuda8
pip install cupy
pip install graphviz
pip install chainer --no-cache-dir
