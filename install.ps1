new-item -path c:\tmp -force -type directory|out-null
(New-Object System.Net.WebClient).DownloadFile('https://raw.githubusercontent.com/fireeye/commando-vm/master/install.ps1','c:\tmp\install.ps1')
if(test-path "c:\tmp\install.ps1"){
    & c:\tmp\install.ps1 -password vagrant -nochecks $true
}