#!/bin/bash

INSTALL_DIR="/opt/CBD/CHITUBOX_Basic"
DESKTOP_FILE="$HOME/.local/share/applications/chitubox.desktop"
ICON_PATH="$INSTALL_DIR/chitubox.png"

# Remove desktop launcher if it exists
if [ -f "$DESKTOP_FILE" ]; then
  rm "$DESKTOP_FILE"
  echo "🗑️ Removed launcher: $DESKTOP_FILE"
else
  echo "ℹ️ Launcher not found at: $DESKTOP_FILE"
fi

# Remove copied icon if it exists
if [ -f "$ICON_PATH" ]; then
  sudo rm "$ICON_PATH"
  echo "🗑️ Removed icon: $ICON_PATH"
else
  echo "ℹ️ Icon not found at: $ICON_PATH"
fi
