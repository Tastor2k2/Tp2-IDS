# Tp2-IDS

### Integrantes:

- Matías Cancina - 111735

- Pedro Perez Mochetti - 114213

- Matias Agustin Alvarez - 114220

### Observaciones

El script __crear_entorno_flask.sh__ crea efectivamente el entorno que se solicita en el enunciado, sumado a otros archivos mas como __script.js__. Pero para poder modelar bien el template que usamos,
tuvimos que cambiar varios archivos internos dentro de las 3 carpetas base que ya teníamos __.venv, static y templates__.

[Template usado como modelo](https://plantillashtmlgratis.com/todas-las-plantillas/plantilla/plantilla-web-simple-gratis-zay-shop/)

La linea dentro de la carpeta __.gitignore__ busca no tener en cuenta los archivos __pycache__ para que cada vez que se ejecute el proyecto, no se tengan que subir cambios referentes a la creación de archivos de caché al repositorio.

### Cómo correr el proyecto

- Estaremos parados dentro de la carpeta __TP2-IDS__ y debemos entrar a la carpeta __EjPractico2__ usando el comando ```cd EjPractico2```.

- Luego activamos el entorno con ```source .venv/bin/activate```.

- Finalmente corremos el proyecto con ```flask run```.

- Para desactivar el entorno, bastará con poner ```deactivate```.