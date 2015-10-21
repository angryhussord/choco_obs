$packageName = 'obs'
$installerType = 'EXE'
$url = 'https://github.com/jp9000/OBS/releases/download/0.656b/OBS_0_656b_Installer.exe'
$silentArgs = '/S'
$validExitCodes = @(0)
Install-ChocolateyPackage "$packageName" "$installerType" "$silentArgs" "$url" -validExitCodes $validExitCodes