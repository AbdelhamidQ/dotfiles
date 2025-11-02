# 🏠 Dotfiles

A minimal yet powerful collection of configuration files for a productive development environment.

## ✨ Features

- **Zsh** with Oh My Zsh, enhanced with intelligent plugins
- **Tmux** with TPM plugins and Tokyo Night theme for enhanced productivity
- **Smart navigation** with `z` plugin integration
- **Autosuggestions** and syntax highlighting for shell commands

## 📁 Configuration Files

### `.zshrc`
- **Shell**: Zsh with Oh My Zsh framework
- **Theme**: Robbyrussell (clean and informative)
- **Plugins**:
  - `git` - Git integration
  - `z` - Smart directory jumping
  - `zsh-autosuggestions` - Command suggestions based on history
  - `zsh-syntax-highlighting` - Visual syntax feedback
- **Custom `cd` function**: Integrates with `z` plugin for intelligent directory navigation
- **Smart `ta` function**: Attaches to most recent tmux session, or specific session if name provided
- **Environment**: NVM and OpenCode path configurations

### `.tmux.conf`
- **Plugin Manager**: TPM (Tmux Plugin Manager) for easy plugin management
- **Theme**: Tokyo Night theme with custom styling
- **Plugins**:
  - `tmux-sensible` - Sensible default settings
  - `tmux-resurrect` - Save/restore tmux sessions
  - `tmux-continuum` - Automatic session saving
  - `tmux-yank` - Enhanced copying to system clipboard
- **Features**:
  - Mouse support enabled
  - Window numbering starts at 1
  - Automatic window renaming
  - Custom status bar with relative path display
  - Quick reload with `Prefix + r`

## 🚀 Installation

### Prerequisites
```bash
# Install Oh My Zsh
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# Install additional Zsh plugins
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting

# Install Tmux (if not already installed)
# Ubuntu/Debian: sudo apt install tmux
# macOS: brew install tmux
# Arch: sudo pacman -S tmux

# Install TPM (Tmux Plugin Manager)
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm

# Install Nerd Font (required for Tokyo Night theme icons)
# Ubuntu/Debian:
sudo apt install fonts-firacode
# Or download and install manually:
wget https://github.com/ryanoasis/nerd-fonts/releases/download/v3.2.1/FiraCode.tar.xz
mkdir -p ~/.local/share/fonts
tar -xf FiraCode.tar.xz -C ~/.local/share/fonts
fc-cache -fv

# macOS:
brew install font-fira-code-nerd-font
```

### Quick Setup
Clone this repository and create symbolic links to your home directory:

```bash
# Clone the repository
git clone <your-repo-url> ~/dotfiles
cd ~/dotfiles

# Create symbolic links
ln -sf ~/dotfiles/.zshrc ~/.zshrc
ln -sf ~/dotfiles/.tmux.conf ~/.tmux.conf

# Reload your shell
source ~/.zshrc

# Install tmux plugins
tmux source ~/.tmux.conf
# Press Prefix + I (install plugins)
```

### One-Liner Installation
```bash
git clone <your-repo-url> ~/dotfiles && cd ~/dotfiles && ln -sf ~/dotfiles/.zshrc ~/.zshrc && ln -sf ~/dotfiles/.tmux.conf ~/.tmux.conf && source ~/.zshrc && tmux source ~/.tmux.conf
```

## 🎯 Usage

### Enhanced Navigation
- Use `z <directory-name>` to jump to frequently visited directories
- The custom `cd` function automatically tries `z` first, falling back to normal `cd`
- Use `ta` to attach to most recent tmux session, or `ta <session-name>` for specific session

### Tmux Workflow
- `Ctrl+B` + `c` - Create new window
- `Ctrl+B` + `"` - Split pane horizontally  
- `Ctrl+B` + `%` - Split pane vertically
- `Ctrl+B` + `r` - Reload configuration
- `Ctrl+B` + `I` - Install plugins
- `Ctrl+B` + `U` - Update plugins
- `Ctrl+B` + `Ctrl+s` - Save session (requires tmux-resurrect)
- `Ctrl+B` + `Ctrl+r` - Restore session (requires tmux-resurrect)
- Use mouse to resize panes and switch between windows

### Shell Features
- Command suggestions appear in gray (press → to accept)
- Syntax highlighting provides real-time feedback
- Git integration shows repository status in prompt

## 🔧 Maintenance

### Updating Configurations
Since these are symbolic links, any changes made in `~/dotfiles/` will automatically reflect in your home directory.

### Adding New Configurations
1. Add the config file to this repository
2. Create a symbolic link: `ln -sf ~/dotfiles/.new-config ~/.new-config`
3. Update this README with documentation

## 📝 Notes

- This setup assumes you're using a Unix-like system (Linux/macOS)
- The `.zshrc` includes NVM configuration - ensure NVM is installed if you need Node.js version management
- OpenCode path is included in the environment variables
- **Font Requirement**: Tokyo Night theme requires a Nerd Font (Fira Code recommended) for proper icon display
- **TPM**: Make sure TPM is installed before loading tmux configuration
- **Plugin Installation**: After first setup, press `Prefix + I` in tmux to install plugins

---

*Minimal by design, powerful by choice.*