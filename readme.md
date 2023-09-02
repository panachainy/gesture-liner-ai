# gesture liner ai

## conda cli

```sh
# create
conda create --name gesture-liner-ai
# activate
conda activate gesture-liner-ai
# deactivate
conda deactivate gesture-liner-ai
# export
conda env export > environment.yml
# import
conda env create -n gesture-liner-ai --file environment.yml
# remove
conda remove --name gesture-liner-ai --all
```

### first time

```sh
conda env create -n gesture-liner-ai --file environment.yml
conda activate gesture-liner-ai
```

## Develop

1. download [liner.ai](https://liner.ai/download)
2. train model
3. export to python
4. copy to this project
5. `conda activate gesture-liner-ai`
6. python example.py
