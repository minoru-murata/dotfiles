"開いているファイルのUndoファイルを削除
command! RmUndoFile call RemoveUndoFile()
function! RemoveUndoFile()
    let g:UndoFile = expand('%')
    let g:UndoFileName = fnamemodify(g:UndoFile, ":t")

    if strlen(g:UndoFileName)!=0
        let g:RemoveUndoFile = "rm ~/.config/nvim/vimfiles/undo/*\%" . g:UndoFileName
        echo g:RemoveUndoFile
        call system(g:RemoveUndoFile)
    else
        echo 'Target is nothing'
    endif
endfunction

"開いているファイルのBackupファイルを削除
command! RmBackupFile call RemoveBackupFile()
function! RemoveBackupFile()
    let g:BackupFile = expand('%')
    let g:BackupFileName = fnamemodify(g:BackupFile, ":t")

    if strlen(g:BackupFileName)!=0
        let g:RemoveBackupFile = "rm ~/.config/nvim/vimfiles/back/" . g:BackupFileName . "\~"
        echo g:RemoveBackupFile
        call system(g:RemoveBackupFile)
    else
        echo 'Target is nothing'
    endif
endfunction

"開いているファイルのSwapファイルを削除（異常終了した後とかに使う用
command! RmSwapFile call RemoveSwapFile()
function! RemoveSwapFile()
    let g:SwapFile = expand('%')
    let g:SwapFileName = fnamemodify(g:SwapFile, ":t")

    if strlen(g:SwapFileName)!=0
        let g:RemoveSwapFile = "rm ~/.config/nvim/vimfiles/swap/" . g:SwapFileName . ".swp"
        echo g:RemoveSwapFile
        call system(g:RemoveSwapFile)
    else
        echo 'Target is nothing'
    endif
endfunction
