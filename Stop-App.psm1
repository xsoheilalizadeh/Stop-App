function Stop-VisualStudio {
    Stop-App ("devenv")
}

function Stop-VSCode {
    Stop-App ("Code - Insiders")
    Stop-App ("Code")
}

function Stop-Edage {
    Stop-App("msedge")   
}

function Stop-OneDrive {
    Stop-App("OneDrive")   
}

function Stop-PowerShell {
    Stop-App("powershell")   
}

function Stop-PowerShellCore {
    Stop-App("pwsh")   
}

function Stop-Snagit {
    Stop-App("Snagit32")
    Stop-App("SnagitEditor")
}

function Stop-TaskManager {
    Stop-App("Taskmgr")
}

function Stop-NodeJs {
    Stop-App("node")
}

function Stop-Rider {
    Stop-App("rider64")
   
}

function Stop-Explorer {
    Stop-App("explorer")
}

function Stop-dotnet {
    Stop-App("dotnet")
}

function Stop-Skype {
    Stop-App("SkypeApp")
}

function Stop-Java {
    Stop-App("java")
}

function Stop-PhotoShop {
    Stop-App("photoshop")
}

function Stop-Chrome {
    Stop-App("chrome")   
}

function Stop-Firefox {
    Stop-App("firefox")   
}


function Stop-IntelliJ {
    Stop-App("idea")   
}
function Stop-Dropbox {
    Stop-App("Dropbox")
   
}

function Stop-AndroidStudio {
    Stop-App("studio64")
}

function Stop-Spotify {
    Stop-App("Spotify")
}

function Stop-WhatsApp {
    Stop-App("WhatsApp")
}

function Stop-Telegram {
    Stop-App("Telegram")
   
}
function Stop-App {
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