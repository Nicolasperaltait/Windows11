
# Cambia al directorio donde están los archivos .mp3
Set-Location 'D:\03-Multimedia\Musica'

# Bucle sobre todos los archivos .mp3 en el directorio y subdirectorios
Get-ChildItem -Recurse -Filter *.mp3 | ForEach-Object {
    # Guarda el nombre original del archivo
    $originalName = $_.Name
    
    # Verifica si el nombre del archivo comienza con '[spotify...'
    if ($originalName -match '^\[SPOTIFY-DOWNLOADER.COM\]') {
        # Reemplaza el texto no deseado en el nombre del archivo
        $newName = $originalName -replace '^\[SPOTIFY-DOWNLOADER.COM\]', ''
        
        # Renombra el archivo
        Rename-Item -Path $_.FullName -NewName $newName
    }
}

Write-Host "Proceso completado."
