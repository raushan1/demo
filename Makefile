setup:
	python3 -m venv ~/.udacity-devops

install:
	pip install --upgrade pip &&\
		pip install -r requirements.txt

test:
	#python -m pytest -vv --cov=myrepolib tests/*.py
	#python -m pytest --nbval notebook.ipynb


lint:
	docker run --rm -i hadolint/hadolint < Dockerfile 
	args = "pylint --disable=R,C,W1203 app.py"

all: install lint test
