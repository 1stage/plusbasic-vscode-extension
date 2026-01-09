param(
    [string]$OutFile = "plusbasic-language.vsix"
)

$ErrorActionPreference = "Stop"

function Ensure-NodeNpx {
    $nodeCmd = Get-Command node -ErrorAction SilentlyContinue
    $npxCmd  = Get-Command npx -ErrorAction SilentlyContinue

    if (-not $nodeCmd -or -not $npxCmd) {
        $candidates = @(
            (Join-Path $env:ProgramFiles 'nodejs'),
            (Join-Path $env:LOCALAPPDATA 'Programs\nodejs')
        )
        foreach ($dir in $candidates) {
            if (Test-Path $dir) {
                $env:Path = "$dir;" + $env:Path
            }
        }
        $nodeCmd = Get-Command node -ErrorAction SilentlyContinue
        $npxCmd  = Get-Command npx -ErrorAction SilentlyContinue
    }

    if (-not $nodeCmd) {
        Write-Error "Node.js not found in PATH. Please install Node.js (LTS) and restart VS Code."; exit 1
    }
    if (-not $npxCmd) {
        # Fallback to typical Windows install path for npx
        $npxFallback = @(
            (Join-Path $env:ProgramFiles 'nodejs\npx.cmd'),
            (Join-Path $env:LOCALAPPDATA 'Programs\nodejs\npx.cmd')
        )
        foreach ($path in $npxFallback) {
            if (Test-Path $path) { return $path }
        }
        # If still not found, rely on invoking 'npx' directly
        return 'npx'
    }
    return $npxCmd.Source
}

# Package using vsce via npx (no global install required)
$scriptDir = Split-Path -Parent $MyInvocation.MyCommand.Path
Push-Location $scriptDir
try {
    $npx = Ensure-NodeNpx
    Write-Host "Packaging plusBASIC extension to $OutFile ..."
    # Use @vscode/vsce with flags to bypass all interactive prompts
    & $npx --yes @vscode/vsce package --no-dependencies --allow-missing-repository --skip-license --out "$OutFile"
    Write-Host "Done. Output: $(Resolve-Path $OutFile)" -ForegroundColor Green
}
finally {
    Pop-Location
}
