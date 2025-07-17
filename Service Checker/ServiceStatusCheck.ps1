# Get all services on the system
$allServices = Get-service

Write-Host "== All Services Status Report =='n"

# Loop through each service and display basic infor
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
}