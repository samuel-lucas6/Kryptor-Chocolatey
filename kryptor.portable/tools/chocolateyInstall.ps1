$ErrorActionPreference = 'Stop';

$packageArgs = @{
    packageName    = $Env:ChocolateyPackageName
    unzipLocation  = Split-Path $MyInvocation.MyCommand.Definition
    url64          = 'https://github.com/samuel-lucas6/Kryptor/releases/download/v3.1.0/kryptor-windows.zip'
    checksum64     = 'C6142E7B987C390EF9BC097273EC9E4284D901619E3F74C97A6F4E15430B7DA6'
    checksumType64 = 'sha256'
}

Install-ChocolateyZipPackage @packageArgs
