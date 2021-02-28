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

**Installation**

```
git clone https://github.com/yikeda6616/dotfiles ~/.dotfiles
ln -s ~/.dotfiles/.zshrc ~
ln -s ~/.dotfiles/.zpreztorc ~
ln -s ~/.dotfiles/.vimrc ~
ln -s ~/.dotfiles/.gitconfig ~
```

```
brew bundle --file '~/.dotfiles/Brewfile
```

**Terminal Setup**

Zsh Framework - [sorin-ionescu/prezto](https://github.com/sorin-ionescu/prezto)

iTerm2 Color Theme - [Arc0re/Iceberg-iTerm2](https://github.com/Arc0re/Iceberg-iTerm2)
