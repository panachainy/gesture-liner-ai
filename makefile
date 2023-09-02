r: run
run:
	python example.py

r.e: reset.env
reset.env:
	conda remove --name gesture-liner-ai --all
	conda env create -n gesture-liner-ai --file environment.yml
