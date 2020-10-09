FROM python:3.10.0a1-alpine


COPY ./requirements.txt /requirements.txt
RUN pip install -r requirements.txt

COPY . /app
WORKDIR /app/


EXPOSE 8000
ENTRYPOINT ["gunicorn","--log-level","debug", "-b","0.0.0.0:8000",  "api:app"]


