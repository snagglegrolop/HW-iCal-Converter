#!/bin/bash
set -e

if [[ $(uname -m) == "arm64" ]]; then
  INSTALL_DIR="/opt/homebrew/bin"
else
  INSTALL_DIR="/usr/local/bin"
fi

echo "Downloading HWiCal..."
curl -L -o /tmp/HWiCal https://github.com/snagglegrolop/HW-iCal-Converter/releases/download/v1.0.0/HWiCal

echo "🔧 Installing to $INSTALL_DIR..."
sudo mv /tmp/HWiCal "$INSTALL_DIR/HWiCal"
sudo chmod +x "$INSTALL_DIR/HWiCal"

echo "Done! Try running: HWiCal"
