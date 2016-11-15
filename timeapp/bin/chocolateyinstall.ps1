﻿$desktop = $([System.Environment]::GetFolderPath([System.Environment+SpecialFolder]::DesktopDirectory))

$link = Join-Path $desktop "TimeApp.lnk"
$target = Join-Path $env:chocolateyPackageFolder "bin\TimeApp.exe"
$work = Join-Path $env:chocolateyPackageFolder "bin"
Install-ChocolateyShortcut -ShortcutFilePath  $link -TargetPath $target -WorkingDirectory $work -RunAsAdmin

