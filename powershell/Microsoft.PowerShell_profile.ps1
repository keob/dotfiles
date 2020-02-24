function Global:prompt {"PS [$Env:username] $PWD`n> "}

function GitStatus { git status }
function GitCheckout { git checkout }
function GitCommit { git commit }
function GitAdd { git add }
function GitAdds {git add . }

Set-Alias gst GitStatus
Set-Alias gct GitCommit
Set-Alias gco GitCheckout
Set-Alias ga GitAdd
Set-Alias gaa GitAdds

Set-Alias venv 'C:\Users\kevin\venv\venv\Scripts\Activate.ps1'
Set-Alias py 'python'