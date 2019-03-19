FROM python:3.6-alpine

RUN adduser -D microblog

WORKDIR /home/microblog

COPY requirements.txt requirements.txt
RUN apk add git
RUN python -m venv venv
RUN venv/bin/pip install -U pip setuptools wheel
RUN venv/bin/pip install -r requirements.txt
RUN venv/bin/pip install gunicorn pymysql

COPY app app
COPY migrations migrations
COPY app.db microblog.py config.py boot.sh ./
RUN chmod a+x boot.sh

ENV FLASK_APP microblog.py

RUN chown -R microblog:microblog ./
RUN apk del git
USER microblog

EXPOSE 5000
ENTRYPOINT ["./boot.sh"]
