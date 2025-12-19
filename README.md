# Dotfiles

Minimal shell and terminal configurations for a productive dev environment.

## Setup

**Prerequisites:**
- Zsh: `sudo apt install zsh` (then set as default shell: `chsh -s $(which zsh)`)
- Tmux: `sudo apt install tmux`
- Oh My Zsh: `sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"`
- Zsh plugins:
  ```bash
  git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
  git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
  ```
- TPM: `git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm`

**Installation:**
```bash
git clone <repo-url> ~/dotfiles
cd ~/dotfiles
ln -sf ~/dotfiles/.zshrc ~/.zshrc
ln -sf ~/dotfiles/.tmux.conf ~/.tmux.conf
mkdir -p ~/.config/opencode
ln -sf ~/dotfiles/opencode.json ~/.config/opencode/opencode.json
source ~/.zshrc
tmux source ~/.tmux.conf
# In tmux, press Ctrl+A + I to install plugins
```

## Configurations

### `.zshrc`
- Oh My Zsh with Robbyrussell theme
- Plugins: `git`, `z`, `zsh-autosuggestions`, `zsh-syntax-highlighting`
- Smart `cd` function with `z` integration
- `ta` function: attach to most recent tmux session (or `ta <name>` for specific)

### `.tmux.conf`
- Prefix: `Ctrl+A` (changed from `Ctrl+B`)
- Theme: [Minimal](https://github.com/binoymanoj/tmux-minimal-theme)
- Plugins: `tmux-sensible`, `tmux-resurrect`, `tmux-continuum`, `tmux-yank`
- Mouse support enabled
- Window numbering starts at 1

### `opencode.json`
OpenCode configuration with system theme and scroll acceleration enabled.

## Quick Reference

| Command | Action |
|---------|--------|
| `z <name>` | Jump to directory |
| `ta [name]` | Attach to tmux session |
| `Ctrl+A + c` | New tmux window |
| `Ctrl+A + "` / `%` | Split pane (horizontal/vertical) |
| `Ctrl+A + r` | Reload tmux config |
| `Ctrl+A + I` | Install tmux plugins |

## Notes

- Symbolic links auto-sync changes to home directory
- NVM configured in `.zshrc` (install if needed)
- TPM must be installed before loading tmux config
