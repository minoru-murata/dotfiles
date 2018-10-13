"install dein
if &compatible
    set nocompatible
endif

if has('nvim')
    let s:dein_dir = expand('~/.config/nvim/dein')
    let s:dein_repo_dir = s:dein_dir . '/repos/github.com/Shougo/dein.vim'
else
    let s:dein_dir = expand('~/.vim/dein')
    let s:dein_repo_dir = s:dein_dir . '/repos/github.com/Shougo/dein.vim'
endif

if &runtimepath !~# 'dein.vim'
    if !isdirectory(s:dein_repo_dir)
        execute '!git clone https://github.com/Shougo/dein.vim' s:dein_repo_dir
    endif

    execute 'set runtimepath^=' . fnamemodify(s:dein_repo_dir, ':p')
endif

if dein#load_state(s:dein_dir)
    call dein#begin(s:dein_dir)

    if has('nvim')
        let g:rc_dir = expand('~/.config/nvim')
    else
        let g:rc_dir = expand('~/.vim')
    endif

    let s:toml = g:rc_dir . '/dein/toml/dein.toml'
    let s:lazy_toml = g:rc_dir . '/dein/toml/dein_lazy.toml'

    call dein#load_toml(s:toml, {'lazy':0})
    call dein#load_toml(s:lazy_toml, {'lazy':1})

    call dein#end()
    call dein#save_state()
endif


if has('nvim')
  call dein#add('zchee/deoplete-jedi')
endif



"起動時に自動でプラグインをチェック・インストール
if dein#check_install()
    call dein#install()
endif
