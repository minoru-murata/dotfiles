if g:dein#_cache_version !=# 100 || g:dein#_init_runtimepath !=# '/home/dev001/.config/nvim/dein/repos/github.com/Shougo/dein.vim/,/home/dev001/.config/nvim,/etc/xdg/xdg-ubuntu/nvim,/etc/xdg/nvim,/home/dev001/.config/nvim/site,/usr/share/ubuntu/nvim/site,/usr/local/share/nvim/site,/usr/share/nvim/site,/var/lib/snapd/desktop/nvim/site,/usr/share/nvim/runtime,/var/lib/snapd/desktop/nvim/site/after,/usr/share/nvim/site/after,/usr/local/share/nvim/site/after,/usr/share/ubuntu/nvim/site/after,/home/dev001/.config/nvim/site/after,/etc/xdg/nvim/after,/etc/xdg/xdg-ubuntu/nvim/after,/home/dev001/.config/nvim/after' | throw 'Cache loading error' | endif
let [plugins, ftplugin] = dein#load_cache_raw(['/home/dev001/.config/nvim/init.vim', '/home/dev001/.config/nvim/dein/toml/dein.toml', '/home/dev001/.config/nvim/dein/toml/dein_lazy.toml'])
if empty(plugins) | throw 'Cache loading error' | endif
let g:dein#_plugins = plugins
let g:dein#_ftplugin = ftplugin
let g:dein#_base_path = '/home/dev001/.config/nvim/dein'
let g:dein#_runtime_path = '/home/dev001/.config/nvim/dein/.cache/init.vim/.dein'
let g:dein#_cache_path = '/home/dev001/.config/nvim/dein/.cache/init.vim'
let &runtimepath = '/home/dev001/.config/nvim/dein/repos/github.com/Shougo/dein.vim/,/home/dev001/.config/nvim,/etc/xdg/xdg-ubuntu/nvim,/etc/xdg/nvim,/home/dev001/.config/nvim/site,/usr/share/ubuntu/nvim/site,/usr/local/share/nvim/site,/usr/share/nvim/site,/var/lib/snapd/desktop/nvim/site,/home/dev001/.config/nvim/dein/repos/github.com/Shougo/dein.vim,/home/dev001/.config/nvim/dein/.cache/init.vim/.dein,/usr/share/nvim/runtime,/home/dev001/.config/nvim/dein/.cache/init.vim/.dein/after,/var/lib/snapd/desktop/nvim/site/after,/usr/share/nvim/site/after,/usr/local/share/nvim/site/after,/usr/share/ubuntu/nvim/site/after,/home/dev001/.config/nvim/site/after,/etc/xdg/nvim/after,/etc/xdg/xdg-ubuntu/nvim/after,/home/dev001/.config/nvim/after'
filetype off
silent! nnoremap <unique><silent> <Plug>(caw:hatpos:toggle) :call dein#autoload#_on_map('<lt>Plug>(caw:hatpos:toggle)', 'caw.vim','n')<CR>
silent! xnoremap <unique><silent> <Plug>(caw:hatpos:toggle) :call dein#autoload#_on_map('<lt>Plug>(caw:hatpos:toggle)', 'caw.vim','x')<CR>
silent! command -complete=customlist,dein#autoload#_dummy_complete -bang -bar -range -nargs=* NERDTreeToggle call dein#autoload#_on_cmd('NERDTreeToggle', 'nerdtree', <q-args>,  expand('<bang>'), expand('<line1>'), expand('<line2>'))
silent! command -complete=customlist,dein#autoload#_dummy_complete -bang -bar -range -nargs=* GundoToggle call dein#autoload#_on_cmd('GundoToggle', 'gundo.vim', <q-args>,  expand('<bang>'), expand('<line1>'), expand('<line2>'))
        let g:gitgutter_highlight_lines = 1
        set updatetime=250
        let g:gitgutter_sign_added = '✚'
        let g:gitgutter_sign_modified = '➤'
        let g:gitgutter_sign_removed = '✘'
        let g:gitgutter_sign_modified_removed = "➜"
        autocmd Vimenter,Colorscheme * :hi GitGutterAddLine ctermfg=none ctermbg=17
        autocmd Vimenter,Colorscheme * :hi GitGutterChangeLine ctermfg=none ctermbg=53
        autocmd Vimenter,Colorscheme * :hi GitGutterDeleteLine ctermfg=none ctermbg=52
        autocmd Vimenter,Colorscheme * :hi GitGutterChangeDeleteLine ctermfg=none ctermbg=53
        let g:NERDTreeIndicatorMapCustom = { "Modified"  : "➤", "Staged"    : "✚", "Untracked" : "✭", "Renamed"   : "➜", "Unmerged"  : "═", "Deleted"   : "✖", "Dirty"     : "✗", "Clean"     : "✔︎", 'Ignored'   : '☒', "Unknown"   : "?" }
    
        let g:indent_guides_enable_on_vim_startup = 1
        let g:indent_guides_start_level = 2
        let g:indent_guides_color_change_percent = 10
        let g:indent_guides_guide_size = 0
        let g:indent_guides_autocolors = 0
        autocmd Vimenter,Colorscheme * :hi IndentGuidesOdd  guibg=#005500 ctermbg=0
        autocmd Vimenter,Colorscheme * :hi IndentGuidesEven guibg=#000055 ctermbg=235
    
        let g:deoplete#sources#jedi#python_path = '/usr/bin/python3.6'
    
        let g:extra_whitespace_ignored_filetypes = ['unite']
        autocmd BufWritePre * :FixWhitespace
    
        let g:NERDTreeIgnore = ['\.swp$', '\.meta$']
        let g:NERDTreeQuitOnOpen = 1
    
        let g:lightline = { 'colorscheme': 'molokai', 'mode_map': {'c': 'NORMAL'}, 'active': { 'left': [ ['mode', 'paste'], ['fugitive', 'gitgutter', 'filename'], ], 'right': [ ['lineinfo', 'syntastic'], ['percent'], ['fileencoding', 'filetype'], ] }, 'component_function': { 'modified': 'MyModified', 'readonly': 'MyReadonly', 'fugitive': 'MyFugitive', 'filename': 'MyFilename', 'fileformat': 'MyFileformat', 'filetype': 'MyFiletype', 'fileencoding': 'MyFileencoding', 'mode': 'MyMode', 'syntastic': 'SyntasticStatuslineFlag', 'charcode': 'MyCharCode', 'gitgutter': 'MyGitGutter', }, 'separator': {'left': '', 'right': ''}, 'subseparator': {'left': '>', 'right': '<'} }
        function! MyModified()
            return &ft =~ 'help\|vimfiler\|gundo' ? '' : &modified ? '➜' : &modifiable ? '' : '-'
        endfunction
        function! MyReadonly()
            return &ft !~? 'help\|vimfiler\|gundo' && &ro ? '⚠' : ''
        endfunction
        function! MyFilename()
            return ('' != MyReadonly() ? MyReadonly() . ' ' : '') . (&ft == 'vimfiler' ? vimfiler#get_status_string() :  &ft == 'unite' ? unite#get_status_string() :  &ft == 'vimshell' ? substitute(b:vimshell.current_dir,expand('~'),'~','') : '' != expand('%:t') ? expand('%:t') : '[No Name]') . ('' != MyModified() ? ' ' . MyModified() : '')
        endfunction
        function! MyFugitive()
            try
                if &ft !~? 'vimfiler\|gundo' && exists('*fugitive#head')
                    let _ = fugitive#head()
                    return strlen(_) ? '@'._ : ''
                endif
            catch
            endtry
            return ''
        endfunction
        function! MyFileformat()
            return winwidth('.') > 70 ? &fileformat : ''
        endfunction
        function! MyFiletype()
            return winwidth('.') > 70 ? (strlen(&filetype) ? &filetype : 'no ft') : ''
        endfunction
        function! MyFileencoding()
            return winwidth('.') > 70 ? (strlen(&fenc) ? &fenc : &enc) : ''
        endfunction
        function! MyMode()
            return winwidth('.') > 60 ? lightline#mode() : ''
        endfunction
        function! MyGitGutter()
            if ! exists('*GitGutterGetHunkSummary') || ! get(g:, 'gitgutter_enabled', 0) || winwidth('.') <= 90
                return ''
            endif
            let symbols = [ '✚', '➤', '✘' ]
            let hunks = GitGutterGetHunkSummary()
            let ret = []
            for i in [0, 1, 2]
                if hunks[i] > 0
                    call add(ret, symbols[i] . hunks[i])
                endif
            endfor
            return join(ret, ' ')
        endfunction
        function! MyCharCode()
            if winwidth('.') <= 70
                return ''
            endif
            redir => ascii
            silent! ascii
            redir END
            if match(ascii, 'NUL') != -1
                return 'NUL'
            endif
            let nrformat = '0x%02x'
            let encoding = (&fenc == '' ? &enc : &fenc)
            if encoding == 'utf-8'
                let nrformat = '0x%04x'
            endif
            let [str, char, nr; rest] = matchlist(ascii, '\v\<(.{-1,})\>\s*([0-9]+)')
            let nr = printf(nrformat, nr)
            return "'". char ."' ". nr
        endfunction
    
        let g:gundo_width = 30
        let g:gundo_help = 0
        let g:gundo_preview_bottom = 1
        let g:gundo_preview_statusline = 1
        let g:gundo_tree_statusline = 1
        let g:gundo_return_on_revert = 0
    
        let g:deoplete#enable_at_startup = 1
        inoremap <expr><C-j> pumvisible() ? "\<C-n>" : "\<C-j>"
        inoremap <expr><C-k> pumvisible() ? "\<C-p>" : "\<C-k>"
        if has('conceal')
            set conceallevel=2 concealcursor=niv
        endif
    
autocmd dein-events InsertEnter * call dein#autoload#_on_event("InsertEnter", ['lexima.vim'])
