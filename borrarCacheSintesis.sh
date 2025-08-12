#!/usr/bin/env bash
# Script to clear cache for Sintesis websites
echo 'Se borrará la cache de los sitios de Síntesis'

echo 'Inodos:'
df -i
echo 'Espacio en disco:'
df -h
echo 'Borrando archivos...:'
rm -rf /home/httpsarmandoprid/public_html/wp-content/cache/supercache/* &
rm -rf /home/adminrostros/public_html/wp-content/cache/object/* &
rm -rf /home/sntesiscom/public_html/wp-content/cache/object/* &
rm -rf /home/sntesiscom/public_html/puebla/wp-content/cache/object/* &
rm -rf /home/sntesiscom/public_html/tlaxcala/wp-content/cache/object/* &
echo '...Archivos borrados.'
wait
echo 'Inodos:'
df -i
echo 'Espacio en disco:'
df -h

echo 'La caché de Sintesis ha sido borrada'