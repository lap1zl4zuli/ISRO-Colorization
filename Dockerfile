FROM python:3.12-slim

WORKDIR /app

COPY . /app/

RUN apt-get update && apt-get install -y libexpat1

RUN pip install --no-cache-dir -r requirements.txt

EXPOSE 8000

CMD ["python", "main.py"]