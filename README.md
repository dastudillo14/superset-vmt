# superset-vmt

~~~
git clone https://github.com/mauricio1499/superset-vmt.git
~~~

~~~
cd superset-vmt
~~~

~~~
docker-compose up -d
~~~


> Luego abrir http://localhost:8089/ en su navegador



## Crear un usuario admin
~~~
docker-compose exec app_ss bash
~~~


~~~
superset fab create-admin
~~~


>> Ver más en: https://superset.apache.org/docs/installation/installing-superset-from-scratch
