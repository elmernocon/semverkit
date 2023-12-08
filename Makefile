PYTHON := python3

lint:
	$(PYTHON) -m ruff check .

format:
	$(PYTHON) -m ruff format .

install:
	$(PYTHON) -m pip install .

clean:
	rm -vrf ./build ./dist ./**/*.egg-info ./**/*.pyc

build-executable:
	docker build -f Dockerfile.executable --output out .
