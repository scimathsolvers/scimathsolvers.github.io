@echo off
SET "SOURCE_DIR=%~dp0"

echo Starting extraction of all ZIP files in %SOURCE_DIR%...

powershell.exe -NoProfile -ExecutionPolicy Bypass -Command "& {$files = Get-ChildItem -Path '%SOURCE_DIR%' -Filter '*.zip';foreach ($file in $files) {$destination = Join-Path -Path $file.DirectoryName -ChildPath $file.BaseName; Write-Host "Extracting '$($file.Name)' to '$destination'";Expand-Archive -Path $file.FullName -DestinationPath $destination -Force;}}"

echo Extraction complete.
pause