FROM python:3.8
WORKDIR /app
COPY requirements.txt requirements.txt
COPY . .
RUN pip3 install -r requirements.txt
EXPOSE 8000
ENTRYPOINT [ "python3" ]
CMD [ "manage.py" , "runserver" ,"0.0.0.0:8000"]
