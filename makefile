dev:
	python app.py

a: activate
activate:
	conda activate gesture-liner-ai

r.e: reset.env
reset.env:
	conda remove --name gesture-liner-ai --all
	conda env create -n gesture-liner-ai --file environment.yml

e: export
export:
	conda env export > environment.yml
