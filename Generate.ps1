$pdf = ".pdf"
function Write-HostCenter { param($Message) Write-Host ("{0}{1}" -f (' ' * (([Math]::Max(0, $Host.UI.RawUI.BufferSize.Width / 2) - [Math]::Floor($Message.Length / 2)))), $Message) }
Write-HostCenter("/---------------------\")
Write-HostCenter("|My Note PDF Generator|")
Write-HostCenter("\---------------------/")
Get-ChildItem ./ -Recurse | ForEach-Object -Process{
    if ($_ -is [System.IO.FileInfo]) {
        if (($_.Extension -join '') -eq ('.md') -and ($_.BaseName -join '') -ne ('README')) {
            Write-HostCenter("Processing "+$_.FullName+"...")
            pandoc -o ($_.DirectoryName+"\Release\"+$_.BaseName+$pdf) $_.FullName --pdf-engine=xelatex -V CJKmainfont="Microsoft YaHei" -V mainfont="Microsoft YaHei" -V geometry:"top=2cm, bottom=1.5cm, left=2cm, right=2cm"
            Write-HostCenter($_.DirectoryName+"\Release\"+$_.BaseName+$pdf+" Generated")
        }
    }
}  