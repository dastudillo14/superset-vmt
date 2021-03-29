FROM python:3.7

# INSTALAR ULTIMA VERSION DE PIP Y HERRAMIENTAS PIP
RUN pip install --upgrade setuptools pip
RUN pip install virtualenv
# CREAR ENTORNO VIRUTAL Y ACTIVARLO
RUN python3 -m venv venv
RUN . venv/bin/activate
# INSTALAR SUPERSET
RUN pip install apache-superset
RUN pip install pyhive 
RUN pip install dataclasses
# INICIO DE SUPERSET, LEVANTA BD SQLITE PARA MANEJAR SESIONES
RUN superset db upgrade
RUN superset init
