FROM python:3.11.9

# install app dependencies
WORKDIR /usr/src/app
COPY requirements.txt ./
RUN pip install -r requirements.txt

# install app
COPY . .

RUN useradd app
USER app

# final configuration

EXPOSE 8000
CMD ["python","manage.py","runserver", "0.0.0.0:8000"]