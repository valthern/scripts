#!/usr/bin/env bash
# Script to clear cache for Sintesis websites
echo 'Se borrará la cache de los sitios de Síntesis'

rm -rf /home/httpsarmandoprid/public_html/wp-content/cache/supercache/* &
rm -rf /home/adminrostros/public_html/wp-content/cache/object/* &
rm -rf /home/sntesiscom/public_html/wp-content/cache/object/* &
rm -rf /home/sntesiscom/public_html/puebla/wp-content/cache/object/* &
rm -rf /home/sntesiscom/public_html/tlaxcala/wp-content/cache/object/* &
wait

echo 'La caché de Sintesis ha sido borrada'