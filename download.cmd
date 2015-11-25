@echo off

SET PATH=%PATH%;C:\Program Files (x86)\Git\bin
SET VERSION=4.5.2

curl -O https://files.phpmyadmin.net/phpMyAdmin/%VERSION%/phpMyAdmin-%VERSION%-all-languages.zip

unzip -q phpMyAdmin-%VERSION%-all-languages.zip & rm -f phpMyAdmin-%VERSION%-all-languages.zip

rename phpMyAdmin-%VERSION%-all-languages content

cp .\tool\config.inc.php .\content\config.inc.php