# Installation
This has currently only been tested for Ubuntu 20.04.

## Index
* Zsh: a Linux shell with extended capabilities (command-line completion, command history, theming and much more...).
* Oh My Zsh: a framework for managing Zsh configurations and theming.
* Powerlevel10k: A quick, flexible and powerful theme for Zsh.

## Terminal Settings
### ZSH
```
// ZSH
$ sudo apt-get install zsh

// Oh My Zsh
$ sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

// Font
Download the following four ttf files below.

Double-click on each file and click "Install". This will make `MesloLGS NF` font available to all
applications on your system. Configure your terminal to use this font.
```

- [MesloLGS NF Regular.ttf](
    https://github.com/romkatv/powerlevel10k-media/raw/master/MesloLGS%20NF%20Regular.ttf)
- [MesloLGS NF Bold.ttf](
    https://github.com/romkatv/powerlevel10k-media/raw/master/MesloLGS%20NF%20Bold.ttf)
- [MesloLGS NF Italic.ttf](
    https://github.com/romkatv/powerlevel10k-media/raw/master/MesloLGS%20NF%20Italic.ttf)
- [MesloLGS NF Bold Italic.ttf](
    https://github.com/romkatv/powerlevel10k-media/raw/master/MesloLGS%20NF%20Bold%20Italic.ttf)
    
```
// Install Powerlevel10k for Oh My Zsh
$ git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k

// Restart Zsh and then run the configure command.
$ p10k configure

// Install autojump Zsh plugin
https://github.com/wting/autojump

// Install zsh-autosuggestions Zsh plugin
git clone https://github.com/zsh-users/zsh-autosuggestions.git $ZSH_CUSTOM/plugins/zsh-autosuggestions

// Install zsh-syntax-highlighting Zsh plugin
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git $ZSH_CUSTOM/plugins/zsh-syntax-highlighting
```

* Colour Scheme
* Path Customisation

## Vim/NeoVim (what version?)
* Colour Scheme
* FZF


# Other Notes
* cvuorinen's configuration
* haccks's Config
