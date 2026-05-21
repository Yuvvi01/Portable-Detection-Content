param(
  [string]$Root = (Resolve-Path (Join-Path $PSScriptRoot "..")).Path
)

$ErrorActionPreference = "Stop"

$requiredFolders = @(
  "DataConnectors",
  "Detections",
  "Hunting Queries",
  "Sample Data",
  "Packages",
  "Tools"
)

$blockedTerms = @(
  ("mp" + "okket"),
  ("mp" + "ocket"),
  ("m-" + "pokket"),
  ("m " + "pokket"),
  ("ident" + "ication"),
  ("sanit" + "ized"),
  ("sanit" + "ization")
)
$blockedPattern = ($blockedTerms | ForEach-Object { [regex]::Escape($_) }) -join "|"
$leakPattern = "AKIA[0-9A-Z]{16}|https?://(?!\[DOMAIN\])|[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\.[A-Za-z]{2,}"

foreach ($folder in $requiredFolders) {
  $path = Join-Path $Root $folder
  if (-not (Test-Path $path)) {
    throw "Missing required folder: $folder"
  }
}

$files = Get-ChildItem -Path $Root -Recurse -File |
  Where-Object { $_.FullName -notmatch ([regex]::Escape([IO.Path]::DirectorySeparatorChar + ".git" + [IO.Path]::DirectorySeparatorChar)) }

foreach ($file in $files) {
  $content = Get-Content -LiteralPath $file.FullName -Raw -ErrorAction SilentlyContinue
  if ($content -match $blockedPattern) {
    throw "Blocked term found in $($file.FullName)"
  }
  $isWatchlist = $file.FullName -match ([regex]::Escape([IO.Path]::DirectorySeparatorChar + "Watchlists" + [IO.Path]::DirectorySeparatorChar))
  if (-not $isWatchlist -and $content -match $leakPattern) {
    throw "Potential sensitive value found in $($file.FullName)"
  }
}

Write-Host "Content validation passed."
