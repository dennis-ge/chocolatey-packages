﻿$ErrorActionPreference = 'Stop';

$toolsDir = $(Split-Path -parent $MyInvocation.MyCommand.Definition)

$executable = Join-Path $toolsDir 'Beekeeper-Studio-3.3.6-portable.exe'

Uninstall-BinFile -Name 'BeekeeperStudio' -Path "$executable"
