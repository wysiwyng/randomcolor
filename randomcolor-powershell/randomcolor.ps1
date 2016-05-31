$colors = "Black", "White", "Gray", "DarkGray", "Red", "DarkRed", "Blue", "DarkBlue", "Green", "DarkGreen", "Yellow", "DarkYellow", "Cyan", "DarkCyan", "Magenta", "DarkMagenta"
$selected = Get-Random -minimum 0 -maximum 15
(Get-Host).UI.RawUI.BackgroundColor = $colors[$selected]
Write-Host New color is $colors[$selected]
