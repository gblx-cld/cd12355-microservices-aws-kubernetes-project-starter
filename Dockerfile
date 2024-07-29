FROM public.ecr.aws/docker/library/python:3.10-alpine

WORKDIR /app

COPY /analytics/ /app

RUN pip install --no-cache-dir -r /app/requirements.txt

CMD ["python", "app.py"]