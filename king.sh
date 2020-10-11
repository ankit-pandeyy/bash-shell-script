# Define every server IP you need to test:
$servers = '10.50.22.87','10.50.22.79','192.168.200.1','192.168.200.223','192.166.1.385'

# Define the port number you need to test (eg: 3389 for RDP):
$portToCheck = '33000'

foreach ($server in $servers) {

    If ( Test-Connection $server -Count 1 -Quiet) {
    
        try {       
            $null = New-Object System.Net.Sockets.TCPClient -ArgumentList $server,$portToCheck
            $props = @{
                Server = $server
                PortOpen = 'Yes'
            }
        }

        catch {
            $props = @{
                Server = $server
                PortOpen = 'No'
            }
        }
    }

    Else {
        
        $props = @{
            Server = $server
            PortOpen = 'Server did not respond to ping'
        }
    }

    New-Object PsObject -Property $props

} 
