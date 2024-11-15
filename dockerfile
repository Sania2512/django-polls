# syntax=docker/dockerfile:1
FROM django:2.16
FROM python:3-slim

# install app dependencies

RUN python -m pip install -r requirements.txt

# install app
COPY requirements.txt .

RUN useradd app
USER app

# final configuration
EXPOSE 8082
CMD ["flask", "run", "--host", "0.0.0.0", "--port", "8082"]