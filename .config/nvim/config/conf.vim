set number
set title
set showmatch
set tabstop=4
set shiftwidth=4
set noexpandtab
set softtabstop=4
set autoindent
set wrap
set showbreak=↳
set breakindent
set breakindentopt=shift:2
set linebreak
set ignorecase
set smartcase
set wrapscan
set fileencoding=utf-8
set fileencodings=utf-8,cp932,euc-jp,shift_jis
set incsearch
set hlsearch
set ruler
set autoread
set matchpairs=(:),{:},[:],<:>
set wildmenu wildmode=longest:full
set cursorline
set clipboard+=unnamed,unnamedplus
autocmd Vimenter,Colorscheme * hi CursorLine cterm=underline
set backspace=2
set list
set listchars=tab:»-,eol:«,trail:･
set showcmd

if has('nvim')
    set directory=$HOME/.config/nvim/vimfiles/swap
    set backupdir=$HOME/.config/nvim/vimfiles/back
    set undodir=$HOME/.config/nvim/vimfiles/undo
    set viminfo+=n$HOME/.config/nvim/vimfiles/viminfo
else
    set directory=$HOME/.vim/vimfiles/swap
    set backupdir=$HOME/.vim/vimfiles/back
    set undodir=$HOME/.vim/vimfiles/undo
    set viminfo+=n$HOME/.vim/vimfiles/viminfo
endif
"viminfoのみ、ファイル名まで指定してやる必要があるので注意
set swapfile
set backup
set undofile

"molokaiがなければダウンロード
if has('nvim')
    if !filereadable(expand('~/.config/nvim/colors/molokai.vim'))
        call system('mkdir ~/.config/nvim/colors')
        call system('curl https://raw.githubusercontent.com/tomasr/molokai/master/colors/molokai.vim > ~/.config/nvim/colors/molokai.vim')
    endif
else
    if !filereadable(expand('~/.vim/colors/molokai.vim'))
        call system('mkdir ~/.vim/colors')
        call system('curl 
    https://raw.githubusercontent.com/tomasr/molokai/master/colors/molokai.vim > ~/.vim/colors/molokai.vim')
    endif
endif

try
    colorscheme molokai
catch
    colorscheme elflord
endtry

if has('mouse')
    set mouse=a
endif

set t_Co=256

hi Normal ctermbg=none


