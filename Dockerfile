FROM 878972766573.dkr.ecr.us-east-1.amazonaws.com/python:latest

WORKDIR /app

COPY /analytics/ /app

RUN pip install --no-cache-dir -r /app/requirements.txt

CMD ["python", "app.py"]