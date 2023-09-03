# Tensorflow liner ai

## Docker usage

`docker pull ghcr.io/panachainy/panachainy/tensorflow-liner-ai:latest`

## Development

### conda cli

```sh
# create
conda create --name tensorflow-liner-ai
# activate
conda activate tensorflow-liner-ai
# deactivate
conda deactivate tensorflow-liner-ai
# export
conda env export > environment.yml
# import
conda env create -n tensorflow-liner-ai --file environment.yml
# remove
conda remove --name tensorflow-liner-ai --all
```

#### first time

```sh
conda env create -n tensorflow-liner-ai --file environment.yml
conda activate tensorflow-liner-ai
```

### Develop

1. download [liner.ai](https://liner.ai/download)
2. train model
3. export to python
4. copy to this project
5. `conda activate tensorflow-liner-ai`
6. python app.py
