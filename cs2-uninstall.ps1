# Windows PowerShell cleanup script
$CSGO_PATH = "C:\Program Files (x86)\Steam\steamapps\common\Counter-Strike Global Offensive"

Write-Host "Removing CS:GO content, game, and EmptySteamDepot folders..."

# Check if directory exists
if (Test-Path $CSGO_PATH) {
    # Remove specific folders
    Remove-Item -Path "$CSGO_PATH\content" -Recurse -Force -ErrorAction SilentlyContinue
    Remove-Item -Path "$CSGO_PATH\game" -Recurse -Force -ErrorAction SilentlyContinue
    Remove-Item -Path "$CSGO_PATH\EmptySteamDepot" -Recurse -Force -ErrorAction SilentlyContinue
    
    Write-Host "Cleanup completed successfully!"
} else {
    Write-Host "CS:GO directory not found at: $CSGO_PATH"
}