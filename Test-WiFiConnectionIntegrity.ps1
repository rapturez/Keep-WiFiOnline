$WirelessAdapters = Get-NetAdapter | Where-Object -Property PhysicalMediaType -ILike "*802.11*"

function Test-ConnectionIntegrity($WF)
    {
        foreach ($w in $WF)
        {
            Test-Connection 8.8.8.8 -Count 1
            "hi" 
        }
    }

Test-ConnectionIntegrity($WirelessAdapters)