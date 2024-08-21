FROM python:3.9-slim

ENV DEBIAN_FRONTEND=noninteractive

RUN apt update -y && \
    apt install -y build-essential libpq-dev && \
    apt clean

WORKDIR /app

COPY /analytics/ /app

RUN pip install --upgrade pip setuptools wheel && \
    pip install --no-cache-dir -r /app/requirements.txt

ENV POSTGRES_USER=myuser
ENV POSTGRES_PASSWORD=${POSTGRES_PASSWORD}
ENV DB_HOST=127.0.0.1
ENV DB_PORT=5433
ENV DB_NAME=mydatabase

EXPOSE 5433

CMD ["python", "app.py"]