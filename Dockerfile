FROM python:3.9.5-buster
WORKDIR /app
RUN chmod 777 /app
RUN pip3 install -U pip
RUNTIME python-3.11.4
COPY requirements.txt .
RUN runtime.txt
RUN pip3 install --no-cache-dir -U -r requirements.txt
COPY . .
CMD ["python3", "-m", "spr"]
