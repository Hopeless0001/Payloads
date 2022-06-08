Function Set-Speaker($Volume){$wshShell = new-object -com wscript.shell;1..50 | % {$wshShell.SendKeys([char]174)};1..$Volume | % {$wshShell.SendKeys([char]175)}}
function beeping {
    [console]::beep(8000,1500)
    Start-Sleep -Seconds 299
}

for ($i=1; $i -le 10; $i++)
{
    Set-Speaker -Volume 50
    Start-Sleep -Seconds 1
    beeping
}
