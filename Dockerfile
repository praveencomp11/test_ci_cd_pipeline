FROM python:3.11.9
RUN apt update
WORKDIR /app
COPY . /app
RUN pip install --no-cache-dir -r requirements.txt
CMD ["python3","app.py"]