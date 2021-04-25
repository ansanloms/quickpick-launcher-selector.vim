# quickpick-launcher-selector.vim

[launcher](https://github.com/ansanloms/quickpick-launcher.vim) selector for [quickpick.vim](https://github.com/prabirshrestha/quickpick.vim).

## Install

```
Plug 'prabirshrestha/quickpick.vim'
Plug 'ansanloms/quickpick-launcher.vim'
Plug 'ansanloms/quickpick-launcher-selector.vim'

command! -bang QuickpickLauncherSelector call quickpick#pickers#launcher#selector#open("<bang>")
```

## Configuration

For example, if you have files `~/.quickpick-launcher`, `~/.quickpick-launcher-fuga`, `~/.quickpick-launcher-hoge` and `~/.quickpick-launcher-piyo`, you can selected `(none)`, `fuga`, `hoge` and `piyo` on [quickpick.vim](https://github.com/prabirshrestha/quickpick.vim).

## Usage

```
:QuickpickLauncherSelector
```
