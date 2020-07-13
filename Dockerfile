FROM python:3.8.3-slim

RUN pip install --upgrade pip

WORKDIR /opt/app
COPY src /opt/app
COPY requirements.txt /opt/app

RUN pip install -r requirements.txt

CMD ["python","/opt/app/app.py"]
