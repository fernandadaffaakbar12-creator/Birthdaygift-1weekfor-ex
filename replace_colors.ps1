$files = @('index.html', 'style.css', 'script.js')
foreach ($file in $files) {
    if (Test-Path $file) {
        $content = Get-Content $file -Raw
        $content = $content -replace '(?i)#87ceeb', '#ffb6c1'
        $content = $content -replace '135,\s*206,\s*235', '255, 182, 193'
        $content = $content -replace '(?i)sky-blue', 'baby-pink'
        $content = $content -replace '(?i)Sky Blue', 'Baby Pink'
        Set-Content -Path $file -Value $content -Encoding UTF8
        Write-Host "Updated $file"
    }
}
