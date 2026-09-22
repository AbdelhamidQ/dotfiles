# Dotfiles

My shell and terminal configurations for a productive dev environment.

## Setup

**Prerequisites:**
- Zsh: `sudo apt install zsh` (then set as default shell: `chsh -s $(which zsh)`)

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
ln -sf ~/dotfiles/.gitconfig ~/.gitconfig
source ~/.zshrc
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



### `.gitconfig`
- Git global config with aliases



### `vscode/`
VS Code settings synced via symlinks:
- `settings.json` - Editor preferences, theme (Catppuccin Mocha), formatters
- `keybindings.json` - Custom shortcuts (Ctrl+E for explorer, Ctrl+G for git)

### `windows-terminal/`
Windows Terminal configuration:
- `settings.json` - Catppuccin Mocha theme, Ubuntu as default profile
 |


## Notes

- Symbolic links auto-sync changes to home directory
- NVM configured in `.zshrc` (install if needed)
- TPM must be installed before loading tmux config
