$ErrorActionPreference = 'Stop';

$packageArgs = @{
    packageName    = $Env:ChocolateyPackageName
    unzipLocation  = Split-Path $MyInvocation.MyCommand.Definition
    url64          = 'https://github.com/samuel-lucas6/Kryptor/releases/download/v4.0.1/kryptor-windows-x64.zip'
    checksum64     = '5891ADDDEA48AE81E6B992CCBC12F7E5FC91E54AC081BD6931B40547E2EABC2D'
    checksumType64 = 'sha256'
}

Install-ChocolateyZipPackage @packageArgs
