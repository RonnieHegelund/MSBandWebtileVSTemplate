param ([string]$project)

$source = "..\..\src"

$destination = $project+".webtile"

If(Test-path $destination) {Remove-item $destination}

Add-Type -assembly "system.io.compression.filesystem"

[io.compression.zipfile]::CreateFromDirectory($Source, $destination)