$string = "-" * 50
$IMAGES = ".\IMAGES\"
$DOCUMENTS = ".\DOCUMENTS\"
$COMPRESSED = ".\COMPRESSED"
$EXE = ".\EXE"
function FOLDER_CHECK {
    param(
        [Parameter(Mandatory)]
        [string] $PATH_TO
    )
    if(!(Test-Path -PathType Container $PATH_TO))
    {
    New-Item -ItemType Container $PATH_TO
    }
}

Write-Host Moving Documents to IMAGES folder
Write-Host $string
FOLDER_CHECK -PATH_TO $IMAGES
Move-Item -Path *.jpg, *.jpeg, *.png, *.bmp -Destination $IMAGES -Verbose

Write-Host Moving Documents to DOCUMENTS folder
Write-Host $string
FOLDER_CHECK -PATH_TO $DOCUMENTS
Move-Item -Path *.pdf, *.docx, *.xls, *.txt -Destination $DOCUMENTS -Verbose

Write-Host Moving Compressed to COMPRESSED folder
Write-Host $string
FOLDER_CHECK -PATH_TO $COMPRESSED
Move-Item -Path *.zip, *.rar, *.7zip -Destination $COMPRESSED -Verbose

Write-Host Moving Installers/Executables to EXE folder
Write-Host $string
FOLDER_CHECK -PATH_TO $EXE
Move-Item -Path *.exe -Destination $EXE -Verbose