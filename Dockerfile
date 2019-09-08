FROM python:3.6.8
LABEL author="AluBhorta"

# ENV PYTHONUNBUFFERED 1

RUN apt update && \ 
  apt upgrade -y && \
  apt autoremove

COPY ./requirements.txt /requirements.txt
RUN pip install -r /requirements.txt

RUN mkdir /app
COPY ./app /app
WORKDIR /app

RUN django-admin startproject myapp
WORKDIR /app/myapp

# EXPOSE 8000:8000

RUN python manage.py migrate
CMD  ["python", "manage.py", "runserver"]



# RUN adduser -D user
# RUN chown -R user:user /vol/
# RUN chmod -R 755 /vol/web
# USER user
