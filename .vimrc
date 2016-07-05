"""""""""""""""""""--------------------
"""""""""""""""""""" 基本的な設定
"""""""""""""""""""--------------------
""""""""""""""""""""新しい行のインデントを現在行と同じにする
""""""""""""""""""set autoindent
""""""""""""""""""
"""""""""""""""""""バックアップファイルのディレクトリを指定する
""""""""""""""""""set backupdir=$HOME/vimbackup
""""""""""""""""""
"""""""""""""""""""クリップボードをWindowsと連携する
""""""""""""""""""set clipboard=unnamed
""""""""""""""""""
"""""""""""""""""""vi互換をオフする
""""""""""""""""""set nocompatible
""""""""""""""""""
"""""""""""""""""""スワップファイル用のディレクトリを指定する
""""""""""""""""""set directory=$HOME/vimbackup
""""""""""""""""""
"""""""""""""""""""タブの代わりに空白文字を指定する
"""""""""""""""""""set expandtab
""""""""""""""""""
"""""""""""""""""""タブ幅の設定
""""""""""""""""""set tabstop=4
""""""""""""""""""
"""""""""""""""""""変更中のファイルでも、保存しないで他のファイルを表示する
""""""""""""""""""set hidden
""""""""""""""""""
"""""""""""""""""""インクリメンタルサーチを行う
""""""""""""""""""set incsearch
""""""""""""""""""
"""""""""""""""""""行番号を表示する
""""""""""""""""""set number
""""""""""""""""""
"""""""""""""""""""閉括弧が入力された時、対応する括弧を強調する
""""""""""""""""""set showmatch
""""""""""""""""""
"""""""""""""""""""新しい行を作った時に高度な自動インデントを行う
""""""""""""""""""set smarttab
""""""""""""""""""
"""""""""""""""""""新しい行を作った時に高度な自動インデントを行う
""""""""""""""""""set smarttab
""""""""""""""""""
""""""""""""""""""" grep検索を設定する
""""""""""""""""""set grepformat=%f:%l:%m,%f:%l%m,%f\ \ %l%m,%f
""""""""""""""""""set grepprg=grep\ -nh
""""""""""""""""""
""""""""""""""""""" 検索結果のハイライトをEsc連打でクリアする
""""""""""""""""""nnoremap <ESC><ESC> :nohlsearch<CR>
""""""""""""""""""
""""""""""""""""""" vimgrepやgrep した際に、cwindowしてしまう
""""""""""""""""""autocmd QuickFixCmdPost *grep* cwindow
""""""""""""""""""
""""""""""""""""""" エスケープシーケンスの表示 tab eol
""""""""""""""""""set list
""""""""""""""""""set listchars=tab:▸\ ,eol:¬
""""""""""""""""""
""""""""""""""""""" 全角スペースの表示
""""""""""""""""""function! ZenkakuSpace()
""""""""""""""""""    highlight ZenkakuSpace cterm=reverse ctermfg=DarkGray gui=reverse guifg=DarkGray
""""""""""""""""""endfunction
""""""""""""""""""if has('syntax')
""""""""""""""""""    augroup ZenkakuSpace
""""""""""""""""""        autocmd!
""""""""""""""""""        "ZenkakuSpace をカラーファイルで設定するなら、
""""""""""""""""""        "次の行をコメントアウト
""""""""""""""""""        autocmd ColorScheme       * call ZenkakuSpace()
""""""""""""""""""        autocmd VimEnter,WinEnter * match ZenkakuSpace /　/
""""""""""""""""""    augroup END
""""""""""""""""""    call ZenkakuSpace()
""""""""""""""""""endif
""""""""""""""""""
""""""""""""""""""
"""""""""""""""""""
""""""""""""""""""" NeoBundle
"""""""""""""""""""
"""""""""""""""""""
""""""""""""""""""" NeoBundle がインストールされていない時、
""""""""""""""""""" もしくは、プラグインの初期化に失敗した時の処理
""""""""""""""""""function! s:WithoutBundles()
""""""""""""""""""  colorscheme desert
""""""""""""""""""  " その他の処理
""""""""""""""""""endfunction
""""""""""""""""""
""""""""""""""""""" NeoBundle よるプラグインのロードと各プラグインの初期化
""""""""""""""""""function! s:LoadBundles()
""""""""""""""""""  " 読み込むプラグインの指定
""""""""""""""""""  NeoBundle 'Shougo/neobundle.vim'
""""""""""""""""""  "NeoBundle 'tpope/vim-surround'
""""""""""""""""""  NeoBundle 'Shougo/unite.vim'
""""""""""""""""""  NeoBundle 'Shougo/vimfiler.vim'
""""""""""""""""""  " ...
""""""""""""""""""  " 読み込んだプラグインの設定
""""""""""""""""""  " ...
""""""""""""""""""endfunction
""""""""""""""""""
""""""""""""""""""" NeoBundle がインストールされているなら LoadBundles() を呼び出す
""""""""""""""""""" そうでないなら WithoutBundles() を呼び出す
""""""""""""""""""function! s:InitNeoBundle()
""""""""""""""""""  if isdirectory(expand("~/.vim/bundle/neobundle.vim/"))
""""""""""""""""""    filetype plugin indent off
""""""""""""""""""    if has('vim_starting')
""""""""""""""""""      set runtimepath+=~/.vim/bundle/neobundle.vim/
""""""""""""""""""    endif
""""""""""""""""""    try
""""""""""""""""""      call neobundle#rc(expand('~/.vim/bundle/'))
""""""""""""""""""      call s:LoadBundles()
""""""""""""""""""    catch
""""""""""""""""""      call s:WithoutBundles()
""""""""""""""""""    endtry 
""""""""""""""""""  else
""""""""""""""""""    call s:WithoutBundles()
""""""""""""""""""  endif
""""""""""""""""""
""""""""""""""""""  filetype indent plugin on
""""""""""""""""""  syntax on
""""""""""""""""""endfunction
""""""""""""""""""
""""""""""""""""""call s:InitNeoBundle()


syntax on
set noexpandtab smartindent sw=4 ts=4
set smartcase incsearch nohls

noremap <Left> :!afplay ~/Documents/.push.mp3 &<CR>:smile<CR>
noremap <Right> :!afplay ~/Documents/.push.mp3 &<CR>:smile<CR>
noremap <Up> :!afplay ~/Documents/.push.mp3 &<CR>:smile<CR>
noremap <Down> :!afplay ~/Documents/.push.mp3 &<CR>:smile<CR>

smile
