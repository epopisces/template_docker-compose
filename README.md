# template_docker-compose

This template contains example code for docker-compose files, largely for my own reference.  I intend to create a more project agnostic true template in the future

## Usage

1. clone the repo
2. rename the desired docker-compose template to `docker-compose.yml`, stripping the appended designator
  * use the `docker-compose_template.yml` file as a reference in modifying (or creating) your docker-compose file
3. remove the any unused docker-compose files
4. customize all files as needed
5. run the `docker-compose` command appropriate to the template used (see [Corresponding Commands](#Templates-corresponding-commands) below)

## Templates & Corresponding Commands
| Template | Corresponding `docker-compose` Command | Source |
|----------|------------------------|--------|
|docker-compose_django-redis-postgres.yml|`docker-compose up --build -d`, `docker-compose run web /usr/local/bin/python manage.py migrate`|[Django Development with Docker Compose](https://realpython.com/django-development-with-docker-compose-and-machine/)|
|docker-compose_fastapi-postgres-pytest.yml|`docker-compose up --build -d`|[Test Driven Development with FastAPI and Docker](https://testdriven.io/courses/tdd-fastapi/docker-config/)|
|docker-compose_django-postgres.yml|`docker-compose run web django-admin startproject composeexample .`, `docker-compose up`|[Docker Quickstart: DJango and Compose](https://docs.docker.com/samples/django/)|