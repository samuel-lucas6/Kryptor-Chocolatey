$ErrorActionPreference = 'Stop';

$packageArgs = @{
    packageName    = $Env:ChocolateyPackageName
    unzipLocation  = Split-Path $MyInvocation.MyCommand.Definition
    url64          = 'https://github.com/samuel-lucas6/Kryptor/releases/download/v4.1.0/kryptor-windows-x64.zip'
    checksum64     = '935A37E290654ABCE719CE14065922D984B811822ABC2E91AF88F3668E373442'
    checksumType64 = 'sha256'
}

Install-ChocolateyZipPackage @packageArgs
