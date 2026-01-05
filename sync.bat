@echo off
cd /d "%%~dp0"
echo [1/3] git add -A
git add -A
echo [2/3] git commit
powershell -NoProfile -Command "$ts=Get-Date -Format yyyy-MM-dd_HH-mm-ss; git commit -m ('sync: '+$ts); if($LASTEXITCODE -ne 0){ Write-Host 'no changes' }"
echo [3/3] git push
git push
pause
