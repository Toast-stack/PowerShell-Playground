# Get all services on the system
$allServices = Get-service

# Prepare output report for CSV export
$report = @()

Write-Host "== All Services Status Report =='n"

# Loop through each service and display basic info
ForEach ($service in $allServices){
    $name = $service.Name
    $displayName = $service.DisplayName
    $status = $service.Status

    # Color-code the outputs
    if ($status -ne 'Running'){
        Write-Host "$displayName ($name) is $status" -Foregroundcolor Red
    } else {
        Write-Host "$displayName ($name) is $Status" -Foregroundcolor Green
    }
    # Add data to the CSV report array
    $report += [PSCustomObject]@{
        Name        = $name
        DisplayName = $displayName
        Status      = $status
    }
}

# Define Desktop Path
$desktopPath = [Environment]::GetFolderPath("Desktop")
$filePath = Join-Path $desktopPath "ServiceStatus.csv"

# Export to CSV
$report | Export-Csv -Path $filePath -NoTypeInformation

Write-Host "'n Service report exported to: $filePath" -Foregroundcolor Cyan