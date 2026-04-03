# starship shell prompt
Invoke-Expression (&starship init powershell)
# pixi autocompletion
(& pixi completion --shell powershell) | Out-String | Invoke-Expression