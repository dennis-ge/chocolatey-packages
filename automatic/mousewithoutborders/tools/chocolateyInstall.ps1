﻿$ErrorActionPreference = 'Stop'

$packageArgs = @{
  PackageName    = $env:ChocolateyPackageName
  FileType       = 'msi'
  Url            = 'https://download.microsoft.com/download/6/5/8/658AFC4C-DC02-4CB8-839D-10253E89FFF7/MouseWithoutBordersSetup.msi'
  Checksum       = 'c73d373275519de5545824ff20e886e4c2d76770cb77f8b685c0b52a1c07e97d'
  ChecksumType   = 'sha256'
  SilentArgs     = '/quiet /qn /norestart'
  ValidExitCodes = @(0, 1605)
}

Install-ChocolateyPackage @packageArgs
