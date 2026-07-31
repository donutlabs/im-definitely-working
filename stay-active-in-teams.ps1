# The Totally Legitimate "I Am Definitely Working" Simulator
# (For educational/joke purposes only)

Add-Type -AssemblyName System.Windows.Forms
Add-Type -AssemblyName System.Drawing

function Move-And-Click {
    Write-Host "Performing highly productive mouse operations..."

    # Current mouse position
    $pos = [System.Windows.Forms.Cursor]::Position

    # Move mouse a few inches (pixels)
    [System.Windows.Forms.Cursor]::Position = New-Object System.Drawing.Point(($pos.X + 150), ($pos.Y + 50))
    Start-Sleep -Seconds 5

    # Click desktop
    [System.Windows.Forms.Cursor]::Position = New-Object System.Drawing.Point(($pos.X + 200), ($pos.Y + 100))
    Start-Sleep -Seconds 5

    [System.Windows.Forms.SendKeys]::SendWait("{CLICK}")
    Start-Sleep -Seconds 5

    # Move again
    [System.Windows.Forms.Cursor]::Position = New-Object System.Drawing.Point(($pos.X - 100), ($pos.Y + 75))
    Start-Sleep -Seconds 5

    # Another click
    [System.Windows.Forms.SendKeys]::SendWait("{CLICK}")
    Start-Sleep -Seconds 5
}

function Switch-To-Teams {
    Write-Host "Pretending to check Teams..."

    # Alt+Tab to next window
    [System.Windows.Forms.SendKeys]::SendWait("%{TAB}")
    Start-Sleep -Seconds 5
}

function Switch-Back {
    Write-Host "Returning to important desktop activities..."

    [System.Windows.Forms.SendKeys]::SendWait("%{TAB}")
    Start-Sleep -Seconds 5
}

while ($true) {

    Write-Host "$(Get-Date): Starting productivity theater..."

    Move-And-Click

    Switch-To-Teams

    Switch-Back

    Write-Host "$(Get-Date): Going dormant for 15 minutes..."
    
    # Wait 15 minutes
    Start-Sleep -Seconds 900
}
