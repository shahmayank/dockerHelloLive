setup:
	python3 -m venv ~/.dockerHelloLive
	
install:
	pip install --upgrade pip &&\
		pip install -r requirements.txt
		
test:
	#python -m pytest -vv -con=myrepolib tests/*.py
	#python -m pytest --nbval notebook.ipynb
	
lint:
	pylint --disable=R,C hello.py
	
all: install lint test