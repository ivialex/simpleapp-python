FROM python:3.9.5-slim-buster
#Set flask_app as working directory
WORKDIR /app
#copy data from current dir into flask_app
COPY . /app
#install dependencies
RUN pip install -r requirements.txt
#Use this port
EXPOSE 80
#run app.py with python 
CMD ["python","app.py"]
