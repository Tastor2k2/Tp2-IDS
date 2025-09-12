#!/bin/bash

# Ejecutar Para Crear (y quedar dentro del directorio):
# source crear_entorno_flask.sh nombre_archivo

# Ejecutar Para Crear (y quedar fuera del directorio):
# bash crear_entorno_flask.sh nombre_archivo

# Ejecutar para borrar (fuera del directorio y que muera la terminal):
# source crear_entorno_flask.sh nombre_archivo -d

# Ejecutar para borrar (fuera del directorio y que no se muera la terminal):
# bash crear_entorno_flask.sh nombre_archivo -d

PROJECT_FOLDER_NAME=$1

crearCarpetas() {
    mkdir static
    cd static
    mkdir images
    mkdir css
    cd css
    touch styles.css
    cd ..
    mkdir js
    cd js
    touch script.js
    cd ..
    mkdir fonts
    cd ..
    mkdir templates
    cd templates
    touch index.html
    cd ..
    touch app.py
    echo "---------------------------Carpetas Creadas---------------------------"
    echo ""
}

eliminarDirectorio() {
    if [[ "$2" = "-d" ]]; then
        if [[ -d "$PROJECT_FOLDER_NAME" ]]; then
            rm -r "$PROJECT_FOLDER_NAME"
        else
            echo ""
            echo "---------------------------"
            echo "No existe el directorio a borrar"
            echo "---------------------------"
            echo ""
        fi
    exit 0
fi
}

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

verificarExistenciaDirectorio() {
    if [ -d "$PROJECT_FOLDER_NAME" ]; then
    echo ""
    echo "---------------------------La carpeta '$PROJECT_FOLDER_NAME' ya existe.---------------------------"
    echo ""
    else
        mkdir "$PROJECT_FOLDER_NAME"
        echo ""
        echo "------------------------Carpeta '$PROJECT_FOLDER_NAME' creada.------------------------"
        echo ""
    fi
}

eliminarDirectorio $PROJECT_FOLDER_NAME $2

verificarInstalacionPython3

verificarInstalacionPip3

sudo apt install python3.12-venv

verificarExistenciaDirectorio $PROJECT_FOLDER_NAME

cd "$PROJECT_FOLDER_NAME"

crearCarpetas

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

# En vs code, dentro del entorno en app.py tocar F1 y colocar
# >interpreter, luego Enter y elegir python (.venv)