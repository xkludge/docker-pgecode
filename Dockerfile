FROM python:3.6.1-alpine

RUN apk add --no-cache --virtual .build-deps gcc musl-dev python3-dev \
    && pip install cython \
    && pip install numpy \
    && apk del .build-deps

RUN apk add --no-cache --update \
    python3 python3-dev gcc \
    gfortran musl-dev g++ \
    libffi-dev openssl-dev \
    libxml2 libxml2-dev \
    libxslt libxslt-dev \
    libjpeg-turbo-dev zlib-dev

RUN pip install --upgrade pip

WORKDIR /opt/app
COPY src /opt/app
COPY requirements.txt /opt/app

RUN pip install -r requirements.txt

CMD ["python","/opt/app/app.py"]
