$vol = (Get-Volume).MasterVolume
$vol = $vol + 10
Set-Volume -MasterVolume $vol