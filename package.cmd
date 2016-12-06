@echo off

mkdir .\build

.\tool\nuget.exe pack .\phpmyadmin.nuspec -BasePath .\content -OutputDirectory .\build

rd /S /Q content > nul