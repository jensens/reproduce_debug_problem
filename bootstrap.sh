#!/bin/bash
# Create a Python virtual environment.
python3.6 -m venv env

# Upgrade packaging tools.
env/bin/pip install --upgrade pip setuptools

# Install the project in editable mode with its testing requirements.
env/bin/pip install -e ".[testing]"

# Run your project's tests.
# this is expected to fail
env/bin/pytest

# Run your project.
env/bin/pserve development.ini

