#!/bin/bash

# SE ASUME QUE EL DIRECTORIO EXISTE, ESTE SCRIPT CREA LO NECESARIO PARA FUNCIONAR CON FLASK.

# Ejecutar Para Crear (y quedar dentro del directorio):
# source activacion_entorno_flask.sh nombre_carpeta

# Ejecutar Para Crear (y quedar fuera del directorio):
# bash activacion_entorno_flask.sh nombre_carpeta
# si se ejecuta este comando, habrá que entrar manualmente y activar el entorno.

PROJECT_FOLDER_NAME=$1

cd $PROJECT_FOLDER_NAME

verificarInstalacionPython3() {
    if python3 --version ; then
    echo ""
    echo "---------------------------Python3 ya esta instalado---------------------------"
    echo ""
    else
        echo ""
        echo "---------------------------Python3 se instalara---------------------------"
        echo ""
        sudo apt install python3
    fi
}

verificarInstalacionPip3() {
    if pip3 --version ; then
    echo ""
    echo "---------------------------Pip3 ya esta instalado---------------------------"
    echo ""
    else
        echo ""
        echo "---------------------------Pip3 se instalara---------------------------"
        echo ""
        sudo apt install python3-pip
    fi
}

verificarInstalacionFlaskMail() {
    if pip list | grep Flask-Mail ; then
    echo ""
    echo "---------------------------Flask-Mail ya está instalado---------------------------"
    echo ""
    else
        echo ""
        echo "---------------------------Flask-Mail se instalará---------------------------"
        echo ""
        pip install Flask-Mail
    fi
}

verificarInstalacionPython3

verificarInstalacionPip3

sudo apt install python3.12-venv

echo ""
echo "---------------------------Creando .venv---------------------------"
echo ""
python3 -m venv .venv # Comando para crear la carpeta .venv para el entorno.
echo "---------------------------Activando el entorno---------------------------"
echo ""
source .venv/bin/activate # activacion del entorno virtual
echo "---------------------------Instalando Flask---------------------------"
echo ""
pip install flask # instalar flask
verificarInstalacionFlaskMail

# En vs code, dentro del entorno en app.py tocar F1 y colocar
# >interpreter, luego Enter y elegir python (.venv)