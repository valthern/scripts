#!/usr/bin/bash

directorio="./"

for archivo in "$directorio"/*; do
    if [[ -f "$archivo" ]]; then
        uuid=$(uuidgen)
        extension="${archivo##*.}"
        nuevo_nombre="$directorio/${uuid}.${extension}"
        mv "$archivo" "$nuevo_nombre"
        echo "Renombrado: $archivo -> $nuevo_nombre"
    fi
done
echo "Cambios de los archivos terminado"
