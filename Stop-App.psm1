function Stop-VisualStudio {
    Stop-Application ("devenv")
}

function Stop-VSCode {
    Stop-Application ("Code - Insiders")
    Stop-Application ("Code")
}

function Stop-Edage {
    Stop-Application("msedge")   
}

function Stop-OneDrive {
    Stop-Application("OneDrive")   
}

function Stop-PowerShell {
    Stop-Application("powershell")   
}

function Stop-PowerShellCore {
    Stop-Application("pwsh")   
}

function Stop-Snagit {
    Stop-Application("Snagit32")
    Stop-Application("SnagitEditor")
}

function Stop-TaskManager {
    Stop-Application("Taskmgr")
}

function Stop-NodeJs {
    Stop-Application("node")
}

function Stop-Rider {
    Stop-Application("rider64")
   
}

function Stop-Explorer {
    Stop-Application("explorer")
}

function Stop-dotnet {
    Stop-Application("dotnet")
}

function Stop-Skype {
    Stop-Application("SkypeApp")
}

function Stop-Java {
    Stop-Application("java")
}

function Stop-PhotoShop {
    Stop-Application("photoshop")
}

function Stop-Chrome {
    Stop-Application("chrome")   
}

function Stop-Firefox {
    Stop-Application("firefox")   
}


function Stop-IntelliJ {
    Stop-Application("idea")   
}
function Stop-Dropbox {
    Stop-Application("Dropbox")
   
}

function Stop-AndroidStudio {
    Stop-Application("studio64")
}

function Stop-Spotify {
    Stop-Application("Spotify")
}

function Stop-WhatsApp {
    Stop-Application("WhatsApp")
}

function Stop-Telegram {
    Stop-Application("Telegram")
   
}
function Stop-Application {
    param (
        $AppName
    )
    
    $ErrorActionPreference = 'Stop'

    try {
        $process = Get-Process -Name $AppName
        Stop-Process $process.Id
        Write-Host "The ($AppName) has stoped." -ForegroundColor Green
    }
    catch {
        Write-Host "The $AppName hasn't found." -ForegroundColor Red
    }
}