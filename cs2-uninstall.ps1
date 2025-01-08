# Windows PowerShell cleanup script
$CSGO_PATH = "C:\Program Files (x86)\Steam\steamapps\common\Counter-Strike Global Offensive"

Write-Host "Removing CS2..."

# Check if directory exists
if (Test-Path $CSGO_PATH) {
    # Remove specific folders
    Remove-Item -Path "$CSGO_PATH\content" -Recurse -Force -ErrorAction SilentlyContinue
    Remove-Item -Path "$CSGO_PATH\game" -Recurse -Force -ErrorAction SilentlyContinue
    Remove-Item -Path "$CSGO_PATH\EmptySteamDepot" -Recurse -Force -ErrorAction SilentlyContinue
    
    Write-Host "CS2 removed successfully!"
} else {
    Write-Host "CS2 directory not found at: $CSGO_PATH"
}
