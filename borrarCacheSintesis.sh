#!/usr/bin/env bash

borrar_cache() {
    local ruta="$1"
    rm -rf "$ruta"
    if [[ $? -eq 0 ]]; then
        echo "✅ Borrado exitoso: $ruta"
    else
        echo "❌ Error al borrar: $ruta"
    fi
}

echo 'Se borrará la cache de Sintesis'

borrar_cache "/home/httpsarmandoprid/public_html/wp-content/cache/supercache/*" &
borrar_cache "/home/adminrostros/public_html/wp-content/cache/object/*" &
borrar_cache "/home/sntesiscom/public_html/wp-content/cache/object/*" &
borrar_cache "/home/sntesiscom/public_html/puebla/wp-content/cache/object/*" &
borrar_cache "/home/sntesiscom/public_html/tlaxcala/wp-content/cache/object/*" &
wait

echo 'La caché de Sintesis ha sido borrada'