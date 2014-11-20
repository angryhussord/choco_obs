$packageName = 'obs'
$installerType = 'EXE'
$url = 'https://github.com/jp9000/OBS/releases/download/0.637b/OBS_0_637b_Installer.exe'
$silentArgs = '/S'
$validExitCodes = @(0)
Install-ChocolateyPackage "$packageName" "$installerType" "$silentArgs" "$url" "$url64"  -validExitCodes $validExitCodes