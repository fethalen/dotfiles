# Felicia's dotfiles 🔧

This repository contains my personal configuration files. 
They provide settings for the following programs:

* [Bash](http://tiswww.case.edu/php/chet/bash/bashtop.html "Bash")
* [bc](https://www.gnu.org/software/bc/)
* [R](https://www.r-project.org/ "The R Project")
* [Readline](https://tiswww.case.edu/php/chet/readline/rltop.html)
* [tmux](https://tmux.github.io/ "tmux")
* [Vim](http://www.vim.org/ "Vim")
* [XTerm](http://invisible-island.net/xterm/)

### XTerm

My XTerm configuration is stored in `~/.Xresources`. Resources are read from
the file `~/.Xresources` when you login, but if you wish to force them to be
reloaded you run the command:

```bash
xrdb -merge ~/.Xresources
```

Make XTerm the default terminal application:

```bash
gsettings set org.gnome.desktop.default-applications.terminal exec 'xterm'
```

### Bash

`source ~/.bashrc` will reload your `.bashrc` while also preserving your
current shell, while `exec $BASH` will reload your `.bashrc` while replacing
your current shell.

### Readline

Reload `.inputrc` by typing <kbd>Ctrl</kbd> + <kbd>X</kbd>, <kbd>Ctrl</kbd> +
<kbd>R</kbd>.

### tmux

tmux settings are stored in `.tmux.conf`. To reload your tmux settings, type
`tmux source-file ~/.tmux.conf` into your command line.


## 📦 Installation

...

## 📝 License

These dotfiles are released under the [MIT license](https://github.com/fethalen/dotfiles/blob/main/LICENSE).
