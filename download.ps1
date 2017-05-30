$version = "4.7.1"

Remove-Item ".\content" -Force -Recurse > $null

Invoke-WebRequest -Uri "https://files.phpmyadmin.net/phpMyAdmin/$version/phpMyAdmin-$version-all-languages.zip" -UseBasicParsing -OutFile ".\phpMyAdmin-$version-all-languages.zip"

Expand-Archive ".\phpMyAdmin-$version-all-languages.zip" -DestinationPath ".\"

Remove-Item ".\phpMyAdmin-$version-all-languages.zip" -Force

Rename-Item ".\phpMyAdmin-$version-all-languages" ".\content"

Copy-Item ".\tool\config.inc.php" ".\content\config.inc.php"

(Get-Content ".\content\libraries\Header.php").Replace("no-referrer", "origin") | Set-Content ".\content\libraries\Header.php"