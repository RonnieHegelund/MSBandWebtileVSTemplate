param ([string]$project)

$source = "..\..\src"

$destination = $project+".webtile"

Remove-item *.*

Add-Type -assembly "system.io.compression.filesystem"

[io.compression.zipfile]::CreateFromDirectory($Source, $destination)