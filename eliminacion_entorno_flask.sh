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

cd $DIRECTORIO_PRINCIPAL

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