# ~/nvim/install.sh
#!/bin/bash

# Create config directories
mkdir -p ~/.config/yabai
mkdir -p ~/.config/skhd

# Symlink configs
ln -sf ~/nvim/yabai/yabairc ~/.config/yabai/yabairc
ln -sf ~/nvim/skhd/skhdrc ~/.config/skhd/skhdrc

echo "Configs symlinked successfully!"
