if has('gui')
    set guioptions-=T
    set guioptions-=m
    set guioptions-=r
    set guioptions-=R
    set guioptions-=l
    set guioptions-=L

    set guifont=Source_Code_Pro:h10,MigMix_1M:h10,Consolas:h10 guifontwide=MigMix_1M:h10,Consolas:h10

    "メニューと中身の文字化け対策
    let $LANG='ja_jp.utf-8'
    set fileencodings=utf-8,euc-jp,sjis
    source $VIMRUNTIME/delmenu.vim
    set encoding=utf-8
    source$VIMRUNTIME/menu.vim

    "ウィンドウサイズを終了時に保存、起動時に復元
    if has('nvim')
        let g:save_window_file = expand('~/.config/nvim/vimfiles/vimwindow')
    else
        let g:save_window_file = expand('~/.vim/vimfiles/vimwindow')
    endif

    augroup SaveWindow
        autocmd!
        autocmd VimLeavePre * call s:save_window()

        function! s:save_window()
            let options = [
                \ 'set columns=' . &columns,
                \ 'set lines=' . &lines,
                \ 'winpos' . getwinposx() . ' ' .getwinposy(),
            ]
            call writefile(options, g:save_window_file)
        endfunction
    augroup END
    if filereadable(g:save_window_file)
        execute 'source' g:save_window_file
    endif

    "カーソルの設定
    set guicursor=a:blinkon0
    if has('multi_byte_ime')
        highlight Cursor guifg=Black guibg=White
        highlight CursorIM guifg=none guibg=Red
    endif

    let g:nerdtree_tabs_open_on_gui_startup=0

    autocmd FocusGained * set transparency=235
    autocmd FocusLost * set transparency=215
endif
