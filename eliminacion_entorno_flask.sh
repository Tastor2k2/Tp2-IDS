#!/bin/bash

# ES REQUISITO ESTAR FUERA DE LA CARPETA DONDE SE ENCUENTRA EL ENTORNO.

# Ejecutar Para eliminar todo lo relacionado al entorno de flask:
# source eliminacion_entorno_flask.sh

DIRECTORIO_PRINCIPAL="EjPractico2"

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

cd $DIRECTORIO_PRINCIPAL

echo ""
echo "---------------------------Desinstalando Flask---------------------------"
echo ""
pip uninstall -y flask
echo "---------------------------Desactivando el entorno---------------------------"
echo ""
deactivate
echo "---------------------------Eliminando .venv---------------------------"
echo ""
rm -rf .venv
eliminarCache

cd ..