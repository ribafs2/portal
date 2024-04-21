#!/bin/sh
# Adicionar seu user para o www-data: sudo adduser ribafs www-data
clear;
echo "Aguarde enquanto configuro as permissões do /backup/www/$1";
echo "";
chown -R ribafs:www-data /backup/www/$1;
find /backup/www/$1 -type d -exec chmod 775 {} \;
find /backup/www/$1 -type f -exec chmod 664 {} \;
echo "";
echo "Concluído!";
