#!/bin/bash

# Get the folder where the script is located
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

# Define application variables
APP_NAME="CHITUBOX Basic"
EXEC_PATH="/opt/CBD/CHITUBOX_Basic/bin/CHITUBOX_Basic"
LIB_PATH="/opt/CBD/CHITUBOX_Basic/lib"
ICON_SOURCE="$SCRIPT_DIR/../freeIcon.png"
ICON_DEST="/opt/CBD/CHITUBOX_Basic/chitubox.png"
DESKTOP_FILE="$HOME/.local/share/applications/chitubox.desktop"

# Copy the icon to CHITUBOX install dir
sudo cp "$ICON_SOURCE" "$ICON_DEST"

# Create the .desktop launcher
cat > "$DESKTOP_FILE" <<EOF
[Desktop Entry]
Version=1.0
Name=$APP_NAME
Exec=env LD_LIBRARY_PATH=$LIB_PATH:\$LD_LIBRARY_PATH $EXEC_PATH
Icon=$ICON_DEST
Type=Application
Categories=Graphics;3DGraphics;
Terminal=false
StartupNotify=true
EOF

chmod +x "$DESKTOP_FILE"

echo "✅ Launcher created at $DESKTOP_FILE"
