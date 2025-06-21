#!/bin/bash

# Resolve the directory this script is in
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

# Define application variables (no versioning)
APP_NAME="CHITUBOX Basic"
INSTALL_DIR="/opt/CBD/CHITUBOX_Basic"
EXEC_PATH="$INSTALL_DIR/bin/CHITUBOX_Basic"
LIB_PATH="$INSTALL_DIR/lib"
ICON_SOURCE="$SCRIPT_DIR/../assets/freeIcon.png"
ICON_DEST="$INSTALL_DIR/chitubox.png"
DESKTOP_FILE="$HOME/.local/share/applications/chitubox.desktop"

echo "📁 Copying icon from: $ICON_SOURCE"
sudo cp "$ICON_SOURCE" "$ICON_DEST"

echo "🛠️ Creating launcher at: $DESKTOP_FILE"
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
StartupWMClass=CHITUBOX Basic
EOF

chmod +x "$DESKTOP_FILE"

echo "✅ Launcher created successfully!"
