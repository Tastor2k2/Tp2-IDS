#!/bin/bash

# SE ASUME QUE EL DIRECTORIO EXISTE, ESTE SCRIPT CREA LO NECESARIO PARA FUNCIONAR CON FLASK.

# Ejecutar Para Crear (y quedar dentro del directorio):
# source activacion_entorno_flask.sh nombre_carpeta

# Ejecutar Para Crear (y quedar fuera del directorio):
# bash activacion_entorno_flask.sh nombre_carpeta
# si se ejecuta este comando, habrá que entrar manualmente y activar el entorno.

PROJECT_FOLDER_NAME=$1

cd $PROJECT_FOLDER_NAME

instalarPython3() {
    if python3 --version > /dev/null 2>&1 ; then
    echo ""
    echo "---------------------------Python3 ya esta instalado---------------------------"
    echo ""
    else
        echo ""
        echo "---------------------------Python3 se instalará---------------------------"
        echo ""
        sudo apt install python3
    fi
}

instalarPip3() {
    if pip3 --version > /dev/null 2>&1 ; then
    echo ""
    echo "---------------------------Pip3 ya esta instalado---------------------------"
    echo ""
    else
        echo ""
        echo "---------------------------Pip3 se instalará---------------------------"
        echo ""
        sudo apt install python3-pip
    fi
}

instalarFlaskMail() {
    if pip list | grep Flask-Mail > /dev/null 2>&1 ; then
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

crearVenv() {
    if [[ -d ".venv" ]]; then
        echo ""
        echo "---------------------------Carpeta .venv ya estaba creada---------------------------"
        echo ""
    else
        echo ""
        echo "---------------------------Creando .venv---------------------------"
        echo ""
        python3 -m venv .venv # Comando para crear la carpeta .venv para el entorno.
    fi
}

ActivacionEntornoVirtual() {
    if [[ -z "$VIRTUAL_ENV" ]]; then
        echo ""
        echo "---------------------------Se activará el entorno virtual---------------------------"
        echo ""
        source .venv/bin/activate # activacion del entorno virtual
    else
        echo ""
        echo "----------------Entorno virtual activado previamente en: $VIRTUAL_ENV----------------"
        echo ""
    fi
}

crearEnv() {
    if [[ -f ".env" ]]; then
        echo ""
        echo "---------------------------Archivo .env ya estaba creado---------------------------"
        echo ""
    else
        echo ""
        echo "---------------------------Creando .env---------------------------"
        echo ""
        touch .env
        echo ""
        echo "---------------------------Llenando .env---------------------------"
        echo ""
        echo "SECRET_KEY=una-clave-secreta-muy-larga-y-unica" >> .env
        echo "MAIL_SERVER=smtp.gmail.com" >> .env
        echo "MAIL_PORT=587" >> .env
        echo "MAIL_USE_TLS=True" >> .env
        echo "MAIL_USE_SSL=False" >> .env
        echo "MAIL_USERNAME=tu-email@gmail.com" >> .env
        echo "MAIL_PASSWORD=tu-app-password" >> .env
        echo "MAIL_DEFAULT_SENDER=tu-email@gmail.com" >> .env
    fi
}

instalarDotenv() {
    if pip list | grep python-dotenv > /dev/null 2>&1 ; then
        echo ""
        echo "---------------------------python-dotenv ya está instalado---------------------------"
        echo ""
    else
        echo ""
        echo "---------------------------python-dotenv se instalará---------------------------"
        echo ""
        pip install python-dotenv
    fi
}

instalarFlask() {
    if pip list | grep Flask > /dev/null 2>&1 ; then
        echo ""
        echo "---------------------------Flask ya estaba instalado---------------------------"
        echo ""
    else
        echo ""
        echo "---------------------------Instalando Flask---------------------------"
        echo ""
        pip install flask
    fi
}

instalarPython3

instalarPip3Pip3

sudo apt install python3.12-venv

crearVenv

crearEnv

ActivacionEntornoVirtual

instalarFlask

instalarFlaskMail

instalarDotenv


# En vs code, dentro del entorno en app.py tocar F1 y colocar
# >interpreter, luego Enter y elegir python (.venv)