Set-Alias lvim 'C:\Users\ldluc\.local\bin\lvim.ps1'
$Env:STARSHIP_CONFIG = "C:\Users\ldluc\.config\starship.toml"
$Env:LUNARVIM_CONFIG_DIR = "C:\Users\ldluc\.config\lvim"
Invoke-Expression (&starship init powershell)

