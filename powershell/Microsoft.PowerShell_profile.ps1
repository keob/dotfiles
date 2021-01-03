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

function touch($file) { "" | Out-File $file -Encoding ASCII }


function killall
{
    $commands = Get-Process $args
    foreach ($command in $commands)
    {
        Stop-Process $command.Id
    }
}

function rm-history
{
	Clear-History
	Remove-Item (Get-PSReadlineOption).HistorySavePath
	[Microsoft.PowerShell.PSConsoleReadLine]::ClearHistory()
	Clear-Host
}

${function:dt} = { Set-Location ~\Desktop }
${function:doc} = { Set-Location ~\Documents }
${function:dl} = { Set-Location ~\Downloads }
