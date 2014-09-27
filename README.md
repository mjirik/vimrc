vimrc
=====


Install
=======

    sudo apt-get instal silversearcher-ag python-autopep8

    git clone git@github.com:mjirik/vimrc.git ~/.vim
    ln -s ~/.vim/.vimrc ~/

With first run of vim all plugins are installed automatically.

    vim

Build vimproc library

    cd ~/.vim/bundle/vimproc.vim
    make


Mappings
===

Insert mode
---

* `<C-h>` in insert mode - go left
* `<C-l>` in insert mode - go right


*  press `jk` or `jk` to go in normal mode


Normal mode
----

* `<C-c>rr` refractoring
* `<C-c>g` go to function definition



Plugins
====


[unite.vim](https://github.com/Shougo/unite.vim)
---
* `<space>s` Unite -quick-match buffer
* `<space>/` Unite grep

fugitive
---

Interface with git from vim

    cd ~/.vim/bundle && git clone https://github.com/tpope/vim-fugitive.git

* `<leader>gc` git commit
* `<leader>gs` git status
* `<leader>gp` git push


[EasyMotion](https://github.com/Lokaltog/vim-easymotion)
---

Vim motion on speed

* `<leader><leader>s` go to letter with EasyMotion

[CtrlP](https://github.com/kien/ctrlp)
---

Full path fuzzy finder

* `<C-p>` open file with fuzzy finder

    cd ~/.vim/bundle
    git clone https://github.com/kien/ctrlp.vim.git

GunDo
---

Visual Undo in vim with diff's to check the differences

* `<leader>u` to run gundo


TagList
---

List of functions
* `<leader>t` turn on sidebar with functions


TaskList
---

* `<leader>Td` to run TaskList

autopep8
---

* `<F8>` to run automatic pep8 corecture

Other Plugins
---

* [vim-startify](https://github.com/mhinz/vim-startify)
* NeoBundle plugin manager for vim. Use `:NeoBundleUpdate` for update your
  plugin list. Alternative to pathogen or vundle.
* [Python-mode](http://github.com/klen/python-mode)
     Rope and so on
* Pytest - 
     Runs your Python tests in Vim.
* Commant-T - 
     Allows easy search and opening of files within a given path
* Snipmate - 
     Configurable snippets to avoid re-typing common comands
* PyFlakes - 
     Underlines and displays errors with Python on-the-fly
* Git - 
    Syntax highlighting for git config files
* Pydoc -
    Opens up pydoc within vim
* Surround - 
    Allows you to surround text with open/close tags
* Py.test - 
    Run py.test test's from within vim
* MakeGreen
    Generic test runner that works with nose
* [vimproc.vim](https://github.com/Shougo/vimproc.vim)
    Interactive command execution in Vim - requested by unite


Links
===

https://github.com/bling/dotvim
