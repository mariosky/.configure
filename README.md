# dotfiles

Archivos de configuración personales y otras tareas de instalación para nuevas máquinas. macOS, Linux, Windows.

### Fonts que me gustan
- [Ubuntu Mono](https://fonts.google.com/specimen/Ubuntu+Mono)
- [Source Code Pro](https://fonts.google.com/specimen/Source+Code+Pro)
- [MesloLGS NF Regular.ttf](https://github.com/romkatv/powerlevel10k-media/raw/master/MesloLGS%20NF%20Regular.ttf)
- [MesloLGS NF Bold.ttf](https://github.com/romkatv/powerlevel10k-media/raw/master/MesloLGS%20NF%20Bold.ttf)
- [MesloLGS NF Italic.ttf](https://github.com/romkatv/powerlevel10k-media/raw/master/MesloLGS%20NF%20Italic.ttf)
- [MesloLGS NF Bold Italic.ttf](https://github.com/romkatv/powerlevel10k-media/raw/master/MesloLGS%20NF%20Bold%20Italic.ttf)

### Instalar el editor Neo Vim
1. Instalar [neovim](https://github.com/neovim/neovim/wiki/Installing-Neovim)
2. Despues el gestor de plugins [vim-plug](https://github.com/junegunn/vim-plug). Abrimos nvim y ejecutamos :PlugInstall 
3. Instalar [ripgrep](https://github.com/BurntSushi/ripgrep#installation)
4. Instalar [sharkdp/fd](https://github.com/sharkdp/fd)
5. Para LSP instalar node y nvm
6. Opcional instalamos el Python provider:
```
python3 -m pip install pynvim --user 

pip install python-lsp-server
```
7. Ejecutamos nvim y revisamos la salud con `:checkhealth` 

### LSP
Instalar el TexLab (https://github.com/latex-lsp/texlab) **macos:** `brew install texlab`
### Terminal

#### Alacritty 
copiar el folder alacritty a ~.\config
```
cp -r alacritty/ ~/.config/
```
#### iTerm2 (macOS)

### Shell

Install oh-my-zh
```
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
```
[Powelevel10k](https://github.com/romkatv/powerlevel10k)



