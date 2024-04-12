# dotfiles

https://dotfiles.github.io/

## setup windows

* install starship
* install nerd fonts
* install powerline fonts (may not be necessary)
* configure windows terminal to use a Nerd Font (e.g. FiraCode Nerd Font)

Test to see if fonts have installed correctly

```bash
echo -e "\xf0\x9f\x90\x8d"
echo -e "\xee\x82\xa0"
```

## VS Code Configuration

see https://dev.to/owl777/how-to-show-nerd-fonts-in-visual-studio-code-15fd

* CTRL+SHIFT+P to open settings
* search for `terminal.integrated.fontFamily` in search bar

## setup wsl

* install `zsh`
* install oh-my-zsh
* set theme (e.g. `agnostic`)
* .bashrc does a bunch of things so need to reimplement in .zshrc
* set .zprofile to load .profile because it doesn't do it automatically, this will make all env variables available

## additional dotfiles to version

* wsl .profile
* windows terminal settings
* powershell profile
* VS Code settings.json