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
ln -sf ~/dotfiles/.gitconfig ~/.gitconfig
mkdir -p ~/.config/opencode
ln -sf ~/dotfiles/opencode.json ~/.config/opencode/opencode.json
source ~/.zshrc
tmux source ~/.tmux.conf
# In tmux, press Ctrl+A + I to install plugins
```

**VS Code (Windows):**
Run in an elevated Command Prompt (Admin):
```cmd
mklink "%APPDATA%\Code\User\settings.json" "%USERPROFILE%\dotfiles\vscode\settings.json"
mklink "%APPDATA%\Code\User\keybindings.json" "%USERPROFILE%\dotfiles\vscode\keybindings.json"
```

**Windows Terminal:**
Close Windows Terminal, then run in an elevated Command Prompt (Admin):
```cmd
del "%LOCALAPPDATA%\Packages\Microsoft.WindowsTerminal_8wekyb3d8bbwe\LocalState\settings.json" && mklink "%LOCALAPPDATA%\Packages\Microsoft.WindowsTerminal_8wekyb3d8bbwe\LocalState\settings.json" "%USERPROFILE%\dotfiles\windows-terminal\settings.json"
```

**AutoHotkey (Windows):**
Requires [AutoHotkey v2](https://www.autohotkey.com/). Create a startup shortcut:
1. Press `Win+R`, type `shell:startup`, press Enter
2. Right-click → New → Shortcut
3. Target: `"%USERPROFILE%\dotfiles\autohotkey\shortcuts.ahk"`
4. Name it `Shortcuts`

## Configurations

### `.zshrc`
- Oh My Zsh with Robbyrussell theme
- Plugins: `git`, `z`, `zsh-autosuggestions`, `zsh-syntax-highlighting`
- Smart `cd` function with `z` integration
- `ta` function: attach to most recent tmux session (or `ta <name>` for specific)
- `source ~/.zshrc` for adding new aliases

### `.tmux.conf`
- Prefix: `Ctrl+A` (changed from `Ctrl+B`)
- Theme: [Minimal](https://github.com/binoymanoj/tmux-minimal-theme)
- Plugins: `tmux-sensible`, `tmux-resurrect`, `tmux-continuum`, `tmux-yank`
- Mouse support enabled
- Window numbering starts at 1

### `.gitconfig`
- Git global config with aliases

### `opencode.json`
OpenCode configuration with system theme and scroll acceleration enabled.

### `vscode/`
VS Code settings synced via symlinks:
- `settings.json` - Editor preferences, theme (Catppuccin Mocha), formatters
- `keybindings.json` - Custom shortcuts (Ctrl+E for explorer, Ctrl+G for git)

### `windows-terminal/`
Windows Terminal configuration:
- `settings.json` - Catppuccin Mocha theme, Ubuntu as default profile

### `autohotkey/`
AutoHotkey v2 shortcuts for quick app switching:
| Shortcut | Action |
|----------|--------|
| `Alt+1` | Zen Browser / Brave |
| `Alt+2` | Windows Terminal |
| `Alt+3` | VS Code |
| `Alt+C` | Chrome |
| `Alt+D` | Discord |
| `Alt+E` | File Explorer |
| `Alt+N` | Notepad |
| `Alt+O` | Obsidian |
| `Alt+T` | Microsoft To Do |
| `Alt+Q` | Close active window |

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
