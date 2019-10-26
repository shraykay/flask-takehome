FROM python:3.7.4-alpine

WORKDIR /app
COPY requirements.txt /tmp/requirements.txt
RUN apk --update add postgresql-dev openssl ca-certificates linux-headers
RUN apk --update add --virtual build-dependencies libffi-dev openssl-dev python-dev py-pip build-base \
  && pip install --upgrade pip \
  && pip install --upgrade pipenv \
  && pip install --upgrade -r /tmp/requirements.txt \
  && apk del build-dependencies

COPY . /app
ENV FLASK_APP=take_home
ENTRYPOINT ["python"]
CMD ["take_home.py"]