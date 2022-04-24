$ErrorActionPreference = 'Stop';

$packageArgs = @{
    packageName    = $Env:ChocolateyPackageName
    unzipLocation  = Split-Path $MyInvocation.MyCommand.Definition
    url64          = 'https://github.com/samuel-lucas6/Kryptor/releases/download/v3.1.1/kryptor-windows.zip'
    checksum64     = 'E5278429C3C52CCF7FB5B8FA35289D505A3266C68CD7D65796B6699111F63815'
    checksumType64 = 'sha256'
}

Install-ChocolateyZipPackage @packageArgs
