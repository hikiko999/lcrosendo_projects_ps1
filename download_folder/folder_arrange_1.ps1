<# UNFINISHED #>

$string = "-" * 50
$IMAGES = ".\IMAGES\"
$DOCUMENTS = ".\DOCUMENTS\"
$COMRPESSED = ".\COMPRESSED"
$EXE = ".\EXE"

$ERROR_MESSAGE = "Process failed"

Write-Host Moving Images to IMAGES folder
Write-Host $string

function COPY_FILE {
    param(
        [Parameter(Mandatory)]
        [string] $PATH_TO
        [strin]
    )
    Write-Host Moving Images to $PATH_TO folder
    Write-Host $string

    if(!(Test-Path -PathType Container $PATH_TO))
    {
        New-Item -ItemType Container $PATH_TO
    }
    try
    {
        mv -Path *.jpg, *.jpeg, *.png, *.bmp -Destination $PATH_TO -Verbose
    }
    catch 
    {
        Write-Host "Process failed" # + "to copy to" + $IMAGES
    }
}

COPY_FILE -PATH_TO $IMAGES
COPY_FILE -PATH_TO $DOCUMENTS

<#
try
{
    if(!(Test-Path -PathType Container $IMAGES))
    {
        New-Item -ItemType Container $IMAGES
    }
    mv -Path *.jpg, *.jpeg, *.png, *.bmp -Destination .\IMAGES\ -Verbose
}
catch 
{
    Write-Host "Process failed" # + "to copy to" + $IMAGES
}
#>

<#
Write-Host Moving Documents to DOCUMENTS folder
Write-Host $string
mv -Path *.pdf, *.docx, *.xls, *.txt -Destination .\DOCUMENTS\ -Verbose

Write-Host Moving Compressed to COMPRESSED folder
Write-Host $string
mv -Path *.zip, *.rar, *.7zip -Destination .\COMPRESSED\ -Verbose

Write-Host Moving Installers/Executables to EXE folder
Write-Host $string
mv -Path *.exe -Destination .\EXE\ -Verbose
#>