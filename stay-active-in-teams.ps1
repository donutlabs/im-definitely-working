# The Totally Legitimate "I Am Definitely Working" Microsoft Teams Simulator
# (For educational/joke purposes only)

Add-Type -AssemblyName System.Windows.Forms
Add-Type -AssemblyName System.Drawing

function Move-And-Click {
    Write-Host "Performing highly productive Teams operations..."

    # Current mouse position
    $pos = [System.Windows.Forms.Cursor]::Position

    # Move mouse a few inches
    [System.Windows.Forms.Cursor]::Position = New-Object System.Drawing.Point(($pos.X + 150), ($pos.Y + 50))
    Start-Sleep -Seconds 5

    # Move mouse again
    [System.Windows.Forms.Cursor]::Position = New-Object System.Drawing.Point(($pos.X + 200), ($pos.Y + 100))
    Start-Sleep -Seconds 5

    Write-Host "Clicking something incredibly important..."
    Start-Sleep -Seconds 5

    # Move again
    [System.Windows.Forms.Cursor]::Position = New-Object System.Drawing.Point(($pos.X - 100), ($pos.Y + 75))
    Start-Sleep -Seconds 5

    Write-Host "Final productivity click completed."
    Start-Sleep -Seconds 5
}

function Show-Desktop {
    Write-Host "Minimizing everything and returning to desktop..."

    # Minimize all windows
    $shell = New-Object -ComObject Shell.Application
    $shell.MinimizeAll()

    Start-Sleep -Seconds 5
}

function Switch-To-Teams {
    Write-Host "Checking Teams for extremely important meetings..."

    # Alt+Tab to Teams
    [System.Windows.Forms.SendKeys]::SendWait("%{TAB}")
    Start-Sleep -Seconds 5
}

function Hide-Teams {
    Write-Host "Leaving Teams after an extremely productive review..."

    # Alt+Tab back
    [System.Windows.Forms.SendKeys]::SendWait("%{TAB}")
    Start-Sleep -Seconds 5

    # Return to desktop
    $shell = New-Object -ComObject Shell.Application
    $shell.MinimizeAll()

    Start-Sleep -Seconds 5
}

while ($true) {

    Write-Host "$(Get-Date): Beginning Teams productivity theater..."

    Move-And-Click

    Show-Desktop

    Switch-To-Teams

    Hide-Teams

    Write-Host "$(Get-Date): Entering highly optimized idle mode..."

    # Wait 15 minutes
    Start-Sleep -Seconds 900
}
