#!/usr/local/bin/pwsh

if (Test-Path .vscode) {

} else {
    New-Item -Type Directory -Path .vscode
}

Remove-Item -Path .\.vscode\*.code-snippets -Force

Get-ChildItem -Recurse -Filter *.code-snippets | ForEach-Object {
    Copy-Item -Path $_.FullName -Destination .\.vscode\
}
