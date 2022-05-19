FROM python:3.8  

RUN mkdir -p /app

COPY . /app

WORKDIR /app

CMD source bin/activate

RUN pip install --upgrade pip 

RUN pip install -r requirements.txt

EXPOSE 8000

CMD ["python", "mywebsite/manage.py", "runserver", "0.0.0.0:8000"] 