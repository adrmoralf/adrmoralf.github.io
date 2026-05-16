@echo off
cd /d "A:\Repositorios\AdriWeb"
echo Configurando repositorio git...
git init
git checkout -b main 2>nul || git checkout main
git add index.html foto.jpg "Mi curriculum.pdf"
git commit -m "Initial portfolio"
git remote remove origin 2>nul
git remote add origin https://github.com/adrmoralf/adrmoralf.github.io.git
echo.
echo Subiendo archivos a GitHub...
git push -u origin main
echo.
echo Listo. En 1-2 minutos estara en: https://adrmoralf.github.io
pause
