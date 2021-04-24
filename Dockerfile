FROM python:3.7-stretch

WORKDIR /app

COPY . /app

RUN pip install --upgrade pip
RUN pip install PyJWT==1.7.1
RUN pip install flask==1.1.2
RUN pip install gunicorn==20.0.4
RUN pip install pytest==6.2.2

ENTRYPOINT ["gunicorn", "-b", ":8080", "main:APP"]