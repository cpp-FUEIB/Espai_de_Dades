param(
    [string]$Nom
)

$metadata = kubectl get ns $Nom -o json | ConvertFrom-Json

Write-Host $metadata.metadata.spec

$metadata
