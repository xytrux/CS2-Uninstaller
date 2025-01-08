#!/bin/bash
# Linux/MacOS cleanup script
CSGO_PATH="$HOME/.steam/steam/steamapps/common/Counter-Strike Global Offensive"

echo "Removing CS2..."

# Check if directory exists
if [ -d "$CSGO_PATH" ]; then
    # Remove specific folders
    rm -rf "$CSGO_PATH/content"
    rm -rf "$CSGO_PATH/game"
    rm -rf "$CSGO_PATH/EmptySteamDepot"
    
    echo "CS2 removed successfully!"
else
    echo "CS2 directory not found at: $CSGO_PATH"
fi
