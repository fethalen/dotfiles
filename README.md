# Felicia's dotfiles 🔧

This repository contains my personal configuration files.

## 📦 Installation

I use [Dotdrop](https://github.com/deadc0de6/dotdrop) to manage my dotfiles.
See the
[installation instructions](https://dotdrop.readthedocs.io/en/latest/installation/)
on how to install Dotdrop. One way to install Dotdrop is via pip:

```
pip install dotdrop
```

To install (i.e., symlink) dotfiles to your system:

```
dotdrop install
```

To install a specific profile (e.g., the profile `laptop` in the following
case), use the flag `-p` or `--profile`:

```
dotdrop install -p laptop
```

## 🔄 Reloading

If you made changes to one of your dotfiles, you may want to reread that file without
having to restart the affected software. Down below are instruction for how to reload dotfile
configurations without requiring a restart.

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

### XTerm

Resources are read from the file `~/.Xresources` upon login. To force
the X resources file to be reloaded, run `xrdb -merge ~/.Xresources`.

To make XTerm the default terminal application, enter

```bash
gsettings set org.gnome.desktop.default-applications.terminal exec 'xterm'
```

into your terminal.

## 📝 License

These dotfiles are released under the [MIT license](https://github.com/fethalen/dotfiles/blob/main/LICENSE).
