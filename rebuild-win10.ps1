set-location d:\devops\brad0000\packer-windows
packer build -on-error=abort .\windows_10.json
$timeStamp = [System.DateTime]::Now.ToString("yyyy-MM-ddTHH.mm.ss")
move-item .\windows_10_virtualbox.box "D:\Repos\alchemy\boxes\windows_10_virtualbox_$timeStamp.box"
