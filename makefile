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

d.b: docker.build
docker.build:
	docker build -t tensorflow_liner_ai_api .

d.r: docker.run
docker.run:
	docker run -p 5000:5000 tensorflow_liner_ai_api
