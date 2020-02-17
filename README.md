# lc3.vim

## Description

This plugin provides syntax highlighting support for the assembly language of the [LC-3 microprocessor](https://wikipedia.org/wiki/LC-3). It will also automatically detect files ending in the `.lc3` extension.

## Installation

Install this with your favorite plugin manager, or do it by hand if you're weird.

For example, [vim-plug](https://github.com/junegunn/vim-plug) users would place

```
Plug 'zacharied/lc3.vim'
```

after `call plug#begin()`.

If you want to automatically detect `.asm` extensions as LC-3 files, then add:

```
let g:lc3_detect_asm = 1
```

*before* the plugin is loaded (before `call plug#begin()` for vim-plug).

## Contributing

If you're inclined to work with this obscure language for some reason, I will gladly accept pull requests. Submit any feedback or suggestions as an Issue.
