# swertres #

A short description of the project.


### Dependency Setup ###

Setup you virtualenv:
```
$ virtualenv --no-site-packages --prompt=”(<virtualenv-display-name>)” env
$ source env/bin/activate
$ pip install cookiecutter
```
or use a virtualenv wrapper:
```
$ mkvirtualenv --no-site-packages <virtualenv-name>
$ pip install cookiecutter
```

Install the requirements in `requirements.txt`:
```
pip install -r requirements.txt
```

## Local Environment Setup

### Required Installations

1. [Python 3.11](https://www.python.org/downloads/)  
    On macOS (with Homebrew): `brew install python3`
2. [Poetry 1.1.11](https://python-poetry.org/docs/#installation)  
    `curl -sSL https://install.python-poetry.org | python3 -`
3. [PostgreSQL 14.0](https://www.postgresql.org/download/)  
    On macOS (with Homebrew): `brew install postgres`

### Install Requirements

1. `poetry install`  
    This installs the libraries required for this project
2. `pre-commit install` 
    This installs pre-commit hooks to enforce code style.

### Setup PostgreSQL Database

```bash
sudo -u postgres psql

CREATE USER swertres WITH PASSWORD 'swertres';
ALTER USER swertres CREATEDB;

CREATE DATABASE swertres owner swertres;

### Configure .env File

1. Copy `.env.example` to `.env` and customize its values.
2. `SECRET_KEY` should be a random string, you can generate a new one using the following command:  
    `python -c 'from secrets import token_urlsafe; print("SECRET_KEY=" + token_urlsafe(50))'`
3. Set `DATABASE_URL` to `postgres://wiki:wiki@localhost/wiki`.

### Project Settings Setup ###
Create a `conf/settings/local.py` file. You can use the `conf/settings/local.py.tpl` file as a template. The `local.py` file is needed for the project to run. The only lines of code required for local.py is the following:
```
from __future__ import absolute_import
from .defaults import *
```

Run migrations:
```
./manage.py migrate
```
