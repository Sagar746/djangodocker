FROM python:3.9.17-buster

ENV PYTHONBUFFERED=1

WORKDIR /django

COPY requirements.txt requirements.txt

RUN pip3 install -r requirements.txt   # RUN requirements.txt file when image is build as a container

COPY . .

# CMD gunicorn docker.wsgi:application --bind 0.0.0.0:8000
CMD ["python","manage.py","runserver"]
EXPOSE 8000



