$musicDir = Join-Path $PSScriptRoot "assets\music"
$playlist = @()

Get-ChildItem $musicDir -Filter "*.mp3" | Sort-Object Name | ForEach-Object {
    $name = $_.BaseName

    if ($name -match "^\d+-") {
        $name = $name -replace "^\d+-", ""
    }

    $name = $name -replace "-", " "

    $words = $name -split "\s+"
    $title = ($words | ForEach-Object { 
        $_.Substring(0,1).ToUpper() + $_.Substring(1).ToLower() 
    }) -join " "

    $playlist += @{
        title = $title
        artist = "Pari Kesit"
        src = "assets/music/$($_.Name)"
    }
}

$json = $playlist | ConvertTo-Json -Depth 3 -Compress
$jsContent = "window._playlist = $json;"
Set-Content -Path (Join-Path $PSScriptRoot "assets\music\playlist.js") -Value $jsContent -Encoding UTF8

Write-Host "Playlist generated: $($playlist.Count) tracks"
$playlist | ForEach-Object { Write-Host "  - $($_.title)" }
