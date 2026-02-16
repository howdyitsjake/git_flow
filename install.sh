#!/bin/bash

echo "=========================================="
echo "   Installing Universal Git Flow (gflow)"
echo "=========================================="
echo ""

# Create directory if it doesn't exist
mkdir -p ~/git_flow

# Copy the gflow script
cp ~/git_flow/gflow ~/git_flow/gflow

# Make executable
chmod +x ~/git_flow/gflow

echo "✅ gflow installed to ~/git_flow/"
echo ""

# Detect shell
SHELL_NAME=$(basename "$SHELL")
SHELL_CONFIG=""

case "$SHELL_NAME" in
    bash)
        SHELL_CONFIG="$HOME/.bashrc"
        [ -f "$HOME/.bash_profile" ] && SHELL_CONFIG="$HOME/.bash_profile"
        ;;
    zsh)
        SHELL_CONFIG="$HOME/.zshrc"
        ;;
    fish)
        SHELL_CONFIG="$HOME/.config/fish/config.fish"
        ;;
    *)
        echo "Unknown shell: $SHELL_NAME"
        SHELL_CONFIG=""
        ;;
esac

echo "Detected shell: $SHELL_NAME"
echo "Config file: $SHELL_CONFIG"
echo ""

# Add to PATH if not already there
if [ -n "$SHELL_CONFIG" ]; then
    if ! grep -q "git_flow" "$SHELL_CONFIG" 2>/dev/null; then
        echo ""
        echo "Adding to PATH in $SHELL_CONFIG..."
        echo "" >> "$SHELL_CONFIG"
        echo "# Git Flow - Universal Git workflow tool" >> "$SHELL_CONFIG"
        echo 'export PATH="$HOME/git_flow:$PATH"' >> "$SHELL_CONFIG"
        echo "✅ Added to PATH"
    else
        echo "Already in PATH"
    fi
fi

echo ""
echo "=========================================="
echo "✅ Installation Complete!"
echo "=========================================="
echo ""
echo "To activate, run:"
echo "  source $SHELL_CONFIG"
echo ""
echo "Or restart your terminal."
echo ""
echo "Then use from anywhere:"
echo "  gflow -b    # Create branch"
echo "  gflow -s    # Sync changes"
echo "  gflow -m    # Merge to main"
echo ""
echo "=========================================="
