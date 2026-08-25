# keraj_explained_ado



- powershell: |
    Write-Host "===== Terraform Command ====="
    Get-Command terraform -ErrorAction SilentlyContinue | Format-List *

    Write-Host "===== Terraform Version ====="
    terraform version

    Write-Host "===== Terraform EXE Check ====="
    $terraformPath = "C:\agents\vsts-agent-win-x64-5.278.0\_work\_tool\terraform\1.15.9\x64\terraform.exe"

    Write-Host "Checking:"
    Write-Host $terraformPath

    if (Test-Path $terraformPath) {
        Write-Host "Terraform EXE EXISTS"
        Get-Item $terraformPath | Format-List FullName,Length,CreationTime,LastWriteTime
    }
    else {
        Write-Host "Terraform EXE DOES NOT EXIST"
        Write-Host "Listing Terraform tool directory..."

        Get-ChildItem `
          "C:\agents\vsts-agent-win-x64-5.278.0\_work\_tool\terraform" `
          -Recurse -ErrorAction SilentlyContinue |
          Select-Object FullName
    }
  displayName: 'Debug Terraform Installation'