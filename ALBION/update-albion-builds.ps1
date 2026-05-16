# Оновлює albion-builds.json для Albion Online Helper (обхід CORS у браузері)
$out = Join-Path $PSScriptRoot "albion-builds.json"
$url = "https://albiononlinegrind.com/api/builds?limit=200"
Write-Host "Завантаження з $url ..."
Invoke-WebRequest -Uri $url -OutFile $out -UseBasicParsing
$j = Get-Content $out -Raw | ConvertFrom-Json
Write-Host "Готово: $($j.builds.Count) збірок -> $out"
Write-Host "Відкрийте albion-online.html у браузері (F5)."
