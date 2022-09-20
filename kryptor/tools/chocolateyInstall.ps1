$ErrorActionPreference = 'Stop';

$packageArgs = @{
    packageName    = $Env:ChocolateyPackageName
    unzipLocation  = Split-Path $MyInvocation.MyCommand.Definition
    url64          = 'https://github.com/samuel-lucas6/Kryptor/releases/download/v4.0.0/kryptor-windows-x64.zip'
    checksum64     = '5B8FF5581FFFCD695EEA055E36B97D838C218CCAFDB6980A8154D1164E28D7B8'
    checksumType64 = 'sha256'
}

Install-ChocolateyZipPackage @packageArgs
