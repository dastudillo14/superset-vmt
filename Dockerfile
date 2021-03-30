FROM python:3.6

# INSTALAR HERRAMIENTAS PIP
RUN apt-get update && apt-get install build-essential libssl-dev libffi-dev libsasl2-modules libsasl2-dev libldap2-dev -y

COPY /requirements.txt /requirements.txt
RUN pip install -r requirements.txt
# INICIO DE SUPERSET, LEVANTA BD SQLITE PARA MANEJAR SESIONES
RUN superset db upgrade
RUN superset init
