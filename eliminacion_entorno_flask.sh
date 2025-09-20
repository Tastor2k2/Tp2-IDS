#!/bin/bash

# Ejecutar Para eliminar todo lo relacionado al entorno de flask:
# source eliminacion_entorno_flask.sh nombre_carpeta

PROJECT_FOLDER_NAME=$1

eliminarCache() {
    if [[ -d "__pycache__" ]]; then
        echo "---------------------------Eliminando __pycache__---------------------------"
        echo ""
        rm -rf __pycache__
    else
        echo "---------------------------No existe __pycache__---------------------------"
        echo ""
    fi
}

desactivarEntorno() {
    if [[ -n "$VIRTUAL_ENV" ]]; then # variable que muestra si un entorno está activo, si muestra una ruta, está activo
        echo "---------------------------Desactivando el entorno---------------------------"
        echo ""
        deactivate
    else
        echo "---------------------------No hay entorno activo---------------------------"
        echo ""
    fi
}

cd $PROJECT_FOLDER_NAME

echo ""
echo "---------------------------Desinstalando Flask---------------------------"
echo ""
pip uninstall -y flask
desactivarEntorno
echo "---------------------------Eliminando .venv---------------------------"
echo ""
rm -rf .venv
eliminarCache

cd ..