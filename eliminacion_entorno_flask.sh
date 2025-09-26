#!/bin/bash

# TODOS LOS CHEQUEOS DE INSTALACION SE OCULTAN DE LA SALIDA DE LA TERMINAL, PARA QUE NO MUEVA LOS MENSAJES DE CONFIRMACION.

# Ejecutar Para eliminar todo lo relacionado al entorno de flask:
# source eliminacion_entorno_flask.sh nombre_carpeta

PROJECT_FOLDER_NAME=$1

cd $PROJECT_FOLDER_NAME

eliminarCache() {
    if [[ -d "__pycache__" ]]; then
        echo ""
        echo "---------------------------Eliminando __pycache__---------------------------"
        echo ""
        rm -rf __pycache__
    else
        echo ""
        echo "---------------------------No existe __pycache__---------------------------"
        echo ""
    fi
}

desactivarEntorno() {
    if [[ -z "$VIRTUAL_ENV" ]]; then # True si da cero, queriendo decir que no hay entorno virtual activo.
        echo ""
        echo "---------------------------No hay entorno activo---------------------------"
        echo ""
    else
        echo ""
        echo "---------------------------Desactivando el entorno---------------------------"
        echo ""
        deactivate
    fi
}

desinstalarFlaskMail() {
    if pip list | grep Flask-Mail > /dev/null 2>&1 ; then
        echo ""
        echo "---------------------------Desinstalando Flask-Mail---------------------------"
        echo ""
        pip uninstall -y flask-mail
    else
        echo ""
        echo "---------------------------Flask-Mail no estaba instalado---------------------------"
        echo ""
    fi
}

desinstalarFlask() {
    if pip list | grep Flask > /dev/null 2>&1 ; then
        echo ""
        echo "---------------------------Desinstalando Flask---------------------------"
        echo ""
        pip uninstall -y flask
    else
        echo ""
        echo "---------------------------Flask no estaba instalado---------------------------"
        echo ""
    fi
}

desinstalarPythonDotenv() {
    if pip list | grep python-dotenv > /dev/null 2>&1 ; then
        echo ""
        echo "---------------------------Desinstalando python-dotenv---------------------------"
        echo ""
        pip uninstall -y python-dotenv
    else
        echo ""
        echo "---------------------------Python-dotenv ya estaba instalado---------------------------"
        echo ""
    fi
}

eliminarEnv() {
    if [[ -f ".env" ]]; then
        echo ""
        echo "---------------------------Eliminando .env---------------------------"
        echo ""
        rm -rf .env
    else
        echo ""
        echo "---------------------------Archivo .env no estaba creado---------------------------"
        echo ""
    fi
}

eliminarVenv() {
    if [[ -d ".venv" ]]; then
        echo ""
        echo "---------------------------Eliminando .venv---------------------------"
        echo ""
        rm -rf .venv
    else
        echo ""
        echo "---------------------------Carpeta .venv no estaba creada---------------------------"
        echo ""
    fi
}

desinstalarPythonDotenv

desinstalarFlaskMail

desinstalarFlask

desactivarEntorno

eliminarEnv

eliminarVenv

eliminarCache

cd ..