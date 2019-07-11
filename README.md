# Vimnimum

Just another vimrc configuration.

**Fundamentals:**
* Vim defaults as much as possible;
* Fewer plugins;
* No autocomplete;
* *Need oriented settings*

## Install

The process below will write/change the `.vimrc` file content.

```
$ git clone https://github.com/cacarrara/vimnimum.git ~/.vimnimum
$ cd ~/.vimnimum
$ sh install.sh
```
Start your vim.

## Update
To update your vim-master with latest features, just run the following command:

```
$ cd ~/.vimnimum && sh update.sh
```

## Uninstall
To disable configs from vimnimum, just rewrite your `.vimrc` file with your own
configs, or keep it empty.

To complete remove vimnimum files:
```
$ rm -r ~/.vimnimum
```

### Requeriments
* Make sure you have `vim-gtk` or `vim-gnome` package installed so copy and
  paste can work well with system's clipboard
* flake8 is needed to Python checks.
* xclip is needed to copy and paste work on NeoVim


*This project started as a fork from
[vim-master](https://github.com/ThiagoLopes/vim-master) and will not exist
without its previous work.*
