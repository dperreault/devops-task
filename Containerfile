FROM python:3.13.7

WORKDIR /opt
EXPOSE 8080

COPY requirements.txt ./
RUN pip install --no-cache-dir -r requirements.txt
COPY . .

CMD ["gunicorn", "--bind", "0.0.0.0:8080", "-w", "2", "helloapp.app:app"]
