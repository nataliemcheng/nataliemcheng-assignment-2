# Makefile for setting up and running the web application

# Define your Python environment and required dependencies
PYTHON=python3
PIP=pip
REQUIREMENTS=requirements.txt

# Port for running the application
PORT=3000

.PHONY: install run

# Target to install dependencies
install:
	@echo "Installing dependencies..."
	$(PYTHON) -m pip install --upgrade pip
	$(PIP) install -r $(REQUIREMENTS)

# Target to run the application
run:
	@echo "Running the web application on http://localhost:$(PORT)..."
	$(PYTHON) -m flask run --host=0.0.0.0 --port=$(PORT)
