# Tp2-IDS

## Integrantes:

- Matías Agustín Cancina - 111735

- Pedro Perez Mochetti - 114213

## Observaciones

### Scripts de bash

El script principal es __manager_directorio_entorno_flask.sh__ el cual permite crear el directorio con sus archivos y carpetas básicos para empezar a trabajar.
Además el script recibe minimo 1 parámetro, aunque puede recibir hasta 2.
El primer parámetro determina el nombre de la carpeta donde estarán los archivos y carpetas armados tal y como lo pide la consigna.
El segundo determina acciones a hacer por sobre el directorio donde está el proyecto, siento dos posibles acciones: Activar y Eliminar.

- Con ```-a``` se ejecuta el script __activacion_entorno_flask.sh__ el cual recibe el nombre de la carpeta del proyecto por parámetro. Ese script lo que hace es las respectivas verificaciones, para luego crear la carpeta <ins>.venv</ins>, luego activar el entorno, para finalmente instalar <ins>Flask</ins>.

- Con ```-d``` se ejecuta el script __eliminacion_entorno_flask.sh__ que tambien recibe por parametro el nombre de la carpeta del proyecto. Lo que el script son
los pasos inversos al mencionado anteriormente, siendo que desinstala <ins>Flask</ins>, desactiva el entorno y borra la carpeta <ins>.venv</ins>.
Adicionalmente al ejecutar el script principal con el parámetro ```-d``` __se borrará la carpeta del proyecto y todo su contenido interno.__

Estos 2 scripts adicionales pueden ejecutarse sin necesidad de ser accionados por el script principal.

Todos los scripts de bash de querer ser ejecutados, requieren que el usuario esté ubicado por fuera de la carpeta que contiene al proyecto y entorno, siendo en este caso la carpeta __Tp2-IDS__.

### .gitignore

Dentro de __.gitignore__ se busca no tener en cuenta los archivos __pycache__ y __.venv__ para que cada vez que se ejecute el proyecto, no se tengan que subir cambios referentes a la creación de archivos de caché al repositorio.

[Este fué el template usado como modelo](https://plantillashtmlgratis.com/todas-las-plantillas/plantilla/plantilla-web-simple-gratis-zay-shop/)

## Cómo correr el proyecto

__(En el caso inicial, ```carpeta_proyecto``` es ```EjPractico2```)__

__Comandos para correr: ```flask run``` ó ```flask run --port=<numero_de_puerto> --debug``` ó ```python3 app.py``` entre otros.__

### Si estamos parados en Tp2-IDS

- Si está el directorio creado pero no está el entorno preparado, se puede ejecutar ```source activacion_entorno_flask.sh carpeta_proyecto``` y ya con eso el usuario quedará situado dentro del proyecto, con el entorno activado, y listo pata correrlo con __comandos para correr__.

- Si está todo el directorio y entorno preparados __(carpeta .venv incluida y Flask instalado)__, pero el entorno no está activado, nos vamos a la carpeta del proyecto con ```cd carpeta_proyecto```, Luego ejecutar ```source .venv/bin/activate``` y finalmente correrlo con __comandos para correr__.

### Si estamos parados en la carpeta del proyecto

- Si no hay ningun entorno armado, Ejecutar ```cd ..``` y luego ```source activacion_entorno_flask.sh carpeta_proyecto``` para
después ejecutar el proyecto con __comandos para correr__.

- Si está flask instalado y la carpeta.venv creada, pero no está el entorno activado, ejecutar ```source .venv/bin/activate``` y correr el proyecto con 
__comandos para correr__.