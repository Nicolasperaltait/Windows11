@echo off
echo Reiniciando el Explorador de Windows...
taskkill /f /im explorer.exe
start explorer.exe
echo El Explorador de Windows ha sido reiniciado.
pause
@echo off
// Esto asegura que la ventana de la terminal no se muestre al ejecutar el script.
