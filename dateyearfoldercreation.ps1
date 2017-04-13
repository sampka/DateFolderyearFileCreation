

$SourceDir = ".\"
$DestinationDir = ".\"

$files = get-childitem $SourceDir *.xml

foreach ($file in $files) 

{

$Directory = $DestinationDir + "" + $file.CreationTime.Date.ToString('yyyy') + "\" + $file.CreationTime.Date.ToString('MM-MMM')

if (!(Test-Path $Directory))
{
New-Item $directory -type directory
}
Move-Item $file.fullname $Directory 
}