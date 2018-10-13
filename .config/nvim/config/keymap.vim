"割当削除
noremap <Space> <Nop>
noremap s <Nop>
noremap <BS> <Nop>
noremap <CR> <Nop>

"ハイライト切り替え
nnoremap @ :noh<CR>

"カーソル操作
noremap K H
noremap J L
noremap H ^
noremap L $
noremap mj zb
noremap mm zz
noremap mk zt

"Wで前の単語に移動
noremap W b

"ページ操作
noremap <C-Up> <C-u>
noremap <C-k> <C-u>
noremap <C-Down> <C-d>
noremap <C-j> <C-d>

"ペースト時にインデント崩れを防止
nnoremap p :set paste<CR><ESC>p:set nopaste<CR><ESC>

"タブ操作
nnoremap ta :tabe<CR>
nnoremap tc :tabc<CR>
nnoremap tl :tabn<CR>
nnoremap th :tabN<CR>

"スプリット操作
nnoremap ss :split<CR>
nnoremap sv :vsplit<CR>
nnoremap sh <C-w>h
nnoremap sj <C-w>j
nnoremap sk <C-w>k
nnoremap sl <C-w>l

"s+Shift(h j k l)でスプリットの場所を移動、rで回転
nnoremap s<S-h> <C-w>H
nnoremap s<S-j> <C-w>J
nnoremap s<S-k> <C-w>K
nnoremap s<S-l> <C-w>L
nnoremap s<S-r> <C-w>r

"(- = + _)ででスプリットサイズを変更
nnoremap - <C-w><C-->
nnoremap = <C-w><C-+>
nnoremap + <C-w><C->>
nnoremap _ <C-w><C-<>

nnoremap <S-u> <C-r>
"Ctrl+uで変更を取り消し
nnoremap <C-u> <S-u>
"?で置換開始
nnoremap ? :%s///

"ビジュアルでCtrl+uで大文字小文字反転
vnoremap <C-u> ~

"1行削除して詰める
noremap <S-x> <S-v>x

"visualで選択した文字を*で検索
vnoremap * "zy:let @/ = @z<CR>n

"visualでCtrl+y/pでクリップボードにコピー/ペースト
vnoremap <C-y> "*y
vnoremap <C-p> "*p

"noremap ; :
"noremap : ;

"[/]<CR>で宣言元/元の場所に移動
noremap [<CR> [<C-i>
noremap ]<CR> <C-o>

"Qをマクロ用に
nnoremap Q @
nnoremap QQ @@

"Ctrl+/でコメントアウト
nmap <C-_> <Plug>(caw:hatpos:toggle)
vmap <C-_> <Plug>(caw:hatpos:toggle)

noremap <C-e> :NERDTreeToggle<CR>

nnoremap # :GundoToggle<CR>
