# Tp2-IDS

## Integrantes:

- Matías Cancina - 111735

- Pedro Perez Mochetti - 114213

- Matias Agustin Alvarez - 114220

## Observaciones

El script de bash __creacion_entorno_flask.sh__ crea la carpeta <ins>.venv</ins>, luego activa el entorno y instala <ins>Flask</ins> en el mismo.
Adicionalmente se hizo otro script de bash: __eliminacion_entorno_flask.sh__ el cual hace los pasos inversos al anterior para borrar el entorno creado,
y deja al usuario situado en la carpeta __Tp2-IDS__ para así ejecutar comodamente la creación del entorno si este último lo desea.

Dentro de __.gitignore__ se busca no tener en cuenta los archivos __pycache__ y __.venv__ para que cada vez que se ejecute el proyecto, no se tengan que subir cambios referentes a la creación de archivos de caché al repositorio.

[Este fué el template usado como modelo](https://plantillashtmlgratis.com/todas-las-plantillas/plantilla/plantilla-web-simple-gratis-zay-shop/)

## Cómo correr el proyecto

### Si el entorno fué creado con el comando ```source creacion_entorno_flask.sh```

En este caso ya habremos omitido gran parte de los pasos previos para ubicarnos en el entorno.
Bastará con usar ```flask run``` ó ```flask run --port=<numero_de_puerto> --debug``` ó ```python3 app.py``` entre otros.

### Si el entorno fué creado con el comando ```bash creacion_entorno_flask.sh```

- En este caso estaremos parados fuera del directorio donde se preparó el entorno, concretamente en __TP2-IDS__. 
Para entrar en el mismo basta con colocar el comando ```cd EjPractico2```. 

- Luego activamos el entorno con ```source .venv/bin/activate```.

- Finalmente corremos el proyecto con ```flask run``` o cualquiera de los mencionados anteriormente en el otro caso.