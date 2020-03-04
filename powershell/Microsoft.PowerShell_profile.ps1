function prompt
{
    $path = Split-Path -leaf -path (Get-Location)
    $Date = Get-Date

    Write-Host
    Write-Host "# " -NoNewline -ForegroundColor Blue
    Write-Host $env:USERNAME -NoNewline -ForegroundColor Cyan
    Write-Host " in " -NoNewline
    Write-Host $path" " -NoNewline -ForegroundColor Green
    # Write-Host " "$Date -ForegroundColor Magenta
    Write-Host ">" -NoNewline -ForegroundColor Magenta

    return " " 
}

function GitStatus{git status }
function GitCheckout { git checkout $args }
function GitCommit { git commit -m $args }
function GitAdd { git add $args }

function GoBack { Set-Location .. }

function Set-CurrentWorkingDirectory
{
    param
    (
        $Path,
        $LiteralPath,
        $PassThru,
        $StackName,
        $UseTransaction
    )
    if ($Path -and ($Path.Contains('...')))
    {
        $a = [System.Text.RegularExpressions.Regex]::Split($Path, "(\.{3,})");
        for ($i = 0; $i -lt $a.Length; $i++)
        {
            $e = $a[$i];
            $l = $e.Length;
            if (($l -gt 2) -and ($e -eq "".PadRight($l, '.')))
            {
                $a[$i] = ".." + [System.String]::Concat([System.Linq.Enumerable]::Repeat("\..", $l - 2))
            }
        }
        $PSBoundParameters['Path'] = [System.String]::Concat($a)
    }
    return Set-Location @PSBoundParameters
}

function which
{
    $results =New-Object System.Collections.Generic.List[System.Object];
    foreach ($command in $args)
    {
        $path = (Get-Command $command).Source
        if ($path)
        {
            $results.Add($path);
        }
    }
    return $results;
}

function killall
{
    $commands = Get-Process $args
    foreach ($command in $commands)
    {
        Stop-Process $command.Id
    }
}

function whoseport
{
    Get-NetTCPConnection -LocalPort $args
}

Set-Alias .. GoBack
Set-Alias cd Set-CurrentWorkingDirectory -Option "AllScope"

Set-Alias gst GitStatus
Set-Alias gct GitCommit
Set-Alias gco GitCheckout
Set-Alias ga GitAdd