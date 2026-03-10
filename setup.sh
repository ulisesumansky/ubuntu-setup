#!/bin/bash

# Get the absolute path of the repository directory
REPO_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

# Update and upgrade system packages
sudo apt update && sudo apt upgrade -y

# Install essential dependencies and tools
sudo apt install -y curl git zsh tmux ripgrep fd-find build-essential wget

# Install JetBrains Mono Nerd Font
echo "Installing JetBrains Mono Nerd Font..."
mkdir -p ~/.local/share/fonts
cd ~/.local/share/fonts
curl -fLo "JetBrainsMonoNerdFont-Regular.ttf" "https://github.com/ryanoasis/nerd-fonts/raw/master/patched-fonts/JetBrainsMono/Ligatures/Regular/JetBrainsMonoNerdFont-Regular.ttf"
fc-cache -fv
cd ~

# Install Oh My Zsh (unattended)
echo "Installing Oh My Zsh..."
RUNZSH=no CHSH=no sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# Install Powerlevel10k theme
echo "Installing Powerlevel10k..."
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k
sed -i 's/ZSH_THEME="robbyrussell"/ZSH_THEME="powerlevel10k\/powerlevel10k"/g' ~/.zshrc

# Remove any conflicting older Neovim versions
echo "Removing old Neovim versions..."
sudo apt remove -y neovim neovim-runtime
sudo apt autoremove -y

# Install Neovim 0.9.5
echo "Installing Neovim 0.9.5..."
cd /tmp
curl -LO https://github.com/neovim/neovim/releases/download/v0.9.5/nvim-linux64.tar.gz
sudo rm -rf /opt/nvim
sudo tar -C /opt -xzf nvim-linux64.tar.gz
sudo ln -sf /opt/nvim-linux64/bin/nvim /usr/local/bin/nvim
cd ~

# Install Miniforge (Includes Conda and Mamba)
echo "Installing Miniforge (Conda + Mamba)..."
cd /tmp
wget "https://github.com/conda-forge/miniforge/releases/latest/download/Miniforge3-Linux-x86_64.sh" -O Miniforge3.sh
bash Miniforge3.sh -b -p "$HOME/miniforge3"

# Initialize conda and mamba for Zsh and Bash
echo "Initializing Conda and Mamba..."
"$HOME/miniforge3/bin/conda" init zsh
"$HOME/miniforge3/bin/conda" init bash
cd ~

# Set up configuration symlinks
echo "Setting up configuration symlinks..."

# Neovim symlink
echo "Symlinking Neovim..."
rm -rf ~/.config/nvim
mkdir -p ~/.config
ln -s "$REPO_DIR/config/nvim" ~/.config/nvim

# tmux symlink
echo "Symlinking tmux..."
rm -f ~/.tmux.conf
ln -s "$REPO_DIR/config/tmux.conf" ~/.tmux.conf

# Change the default shell to Zsh
echo "Changing default shell to Zsh..."
sudo chsh -s $(which zsh) $USER

echo "Setup finished successfully. Please close this terminal and open a new one to apply all changes."
