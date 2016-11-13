$ErrorActionPreference = 'Stop';

$packageName = 'obs';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)";
$installerType = 'EXE';
$url = 'https://github.com/jp9000/OBS/releases/download/0.659b/OBS_0_659b_With_Browser_Installer.exe';
$url64 = $url;

$packageArgs = @{
  packageName   = $packageName
  unzipLocation = $toolsDir
  fileType      = $installerType
  url           = $url
  url64bit      = $url
  silentArgs    = '/S'
  validExitCodes= @(0)
  softwareName  = 'obs'
  checksum      = '34F55BAA5D97D70CD05CD0E2C42B01C045E447EADF816E3AFF6A51E05D47E43B'
  checksumType  = 'sha256'
};

Install-ChocolateyPackage @packageArgs;