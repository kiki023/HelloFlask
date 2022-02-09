FROM python:3.7
RUN mkdir /app
WORKDIR /app/
ADD . /app/
COPY requirements.txt /tmp/requirements.txt
RUN python3 -m pip install -r /tmp/requirements.txt
//RUN pip install -r requirements.txt
CMD ["python", "/app/app.py"]
