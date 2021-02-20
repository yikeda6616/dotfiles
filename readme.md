# dotfiles

**Prerequisites**

Command Line Tool
```
xcode-select --install
```

Homebrew
```
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```

(Optional)[Prezto](https://github.com/sorin-ionescu/prezto)

```
git clone --recursive https://github.com/sorin-ionescu/prezto.git "${ZDOTDIR:-$HOME}/.zprezto"
```

**Installation**

```
git clone https://github.com/yikeda6616/dotfiles ~/.dotfiles &&
ln -s ~/.dotfiles/.gitconfig ~ &&
ln -s ~/.dotfiles/.zshrc ~ &&
ln -s ~/.dotfiles/.zpreztorc ~ &&
ln -s ~/.dotfiles/.vimrc ~
```

**Terminal Setup**

Zsh Framework - [sorin-ionescu/prezto](https://github.com/sorin-ionescu/prezto)

iTerm2 Color Theme - [Arc0re/Iceberg-iTerm2](https://github.com/Arc0re/Iceberg-iTerm2)
