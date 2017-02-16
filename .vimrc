" Fisa-vim-config
" http://fisadev.github.io/fisa-vim-config/
" version: 8.2
" ============================================================================
" Vim-plug initialization
" Avoid modify this section, unless you are very sure of what you are doing
let vim_plug_just_installed = 0
let vim_plug_path = expand('~/.vim/autoload/plug.vim')
if !filereadable(vim_plug_path)
    echo "Installing Vim-plug..."
    echo ""
    silent !mkdir -p ~/.vim/autoload
    silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
    let vim_plug_just_installed = 1
endif
" manually load vim-plug the first time
if vim_plug_just_installed
    :execute 'source '.fnameescape(vim_plug_path)
endif
" Obscure hacks done, you can now modify the rest of the .vimrc as you wish :)
" ============================================================================
" Active plugins
" You can disable or add new ones here:
" this needs to be here, so vim-plug knows we are declaring the plugins we
" want to use
call plug#begin('~/.vim/plugged')
" Plugins from github repos:
" Override configs by directory
Plug 'arielrossanigo/dir-configs-override.vim'
" Better file browser
Plug 'scrooloose/nerdtree'
" Code commenter
Plug 'scrooloose/nerdcommenter'
" Class/module browser
Plug 'majutsushi/tagbar'
" Code and files fuzzy finder
Plug 'ctrlpvim/ctrlp.vim'
" Extension to ctrlp, for fuzzy command finder
Plug 'fisadev/vim-ctrlp-cmdpalette'
" Zen coding
Plug 'mattn/emmet-vim'
"tive.vim may very well be the best Git wrapper of all time.
Plug 'tpope/vim-fugitive'

" Tab list panel
"Plug 'kien/tabman.vim'
" Airline
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
" Surround
"Plug 'tpope/vim-surround'
" Autoclose
Plug 'Townk/vim-autoclose'
" Indent text object
Plug 'michaeljsmith/vim-indent-object'
" Indentation based movements
Plug 'jeetsukumaran/vim-indentwise'

"Python mode (indentation, doc, refactor, lints, code checking, motion and
" operators, highlighting, run and ipdb breakpoints)
"Plug 'klen/python-mode'

" Better autocompletion
"Plug 'Shougo/neocomplcache.vim'
Plug 'Shougo/deoplete.nvim'
Plug 'Shougo/neocomplete.vim'

" Snippets manager (SnipMate), dependencies, and snippets repo
Plug 'MarcWeber/vim-addon-mw-utils'
Plug 'tomtom/tlib_vim'
Plug 'garbas/vim-snipmate'
" Optional:
Plug 'honza/vim-snippets'

" Git/mercurial/others diff icons on the side of the file lines
Plug 'mhinz/vim-signify'

" Automatically sort python imports
"Plug 'fisadev/vim-isort'

" Drag visual blocks arround
"Plug 'fisadev/dragvisuals.vim'

" Window chooser
Plug 't9md/vim-choosewin'

" Python and other languages code checker
Plug 'scrooloose/syntastic'

" Paint css colors with the real color
Plug 'lilydjwg/colorizer'

" Ack code search (requires ack installed in the system)
"Plug 'mileszs/ack.vim'

"if has('python')
    " YAPF formatter for Python
"    Plug 'pignacio/vim-yapf-format'
"endif

" Search results counter
"Plug 'IndexedSearch'

" Yank history navigation
Plug 'vim-scripts/YankRing.vim'

""""""""""""""""""""""""""
"This plugin is used for displaying thin vertical lines at each indentation level for code indented with spaces.
Plug 'Yggdroot/indentLine'

"Command-T is a Vim plug-in that provides an extremely fast "fuzzy" mechanism for:
"   Opening files and buffers
"   Jumping to tags and help
"   Running commands, or previous searches and commands
Plug 'wincent/command-t'

"Insert or delete brackets, parens, quotes in pair.
Plug 'jiangmiao/auto-pairs'

"Append system clipboard changes to current buffer.
Plug 'CaptureClipboard'

"The best PostgreSQL plugin for Vim!
Plug 'lifepillar/pgsql.vim'

"Fuzzy file, buffer, mru, tag, etc finder.
Plug 'kien/ctrlp.vim'
"A super simple function navigator for ctrlp.vim.
"For lazy people who cannot wait until ctags finishes.
Plug 'tacahiroy/ctrlp-funky'
"rust
Plug 'rust-lang/rust.vim'
"golang
Plug 'fatih/vim-go'
"JavaScript
Plug 'pangloss/vim-javascript'
Plug 'isRuslan/vim-es6'
Plug 'moll/vim-node'
"lua
Plug 'xolox/vim-misc'
Plug 'xolox/vim-lua-ftplugin'
"nginx
Plug 'evanmiller/nginx-vim-syntax'
"css3
Plug 'hail2u/vim-css3-syntax'
"hexmode
Plug 'fidian/hexmode'

"Mini map
"Plug 'severin-lemaignan/vim-minimap'

" Tell vim-plug we finished declaring plugins, so it can load them
call plug#end()
" Install plugins the first time vim runs
if vim_plug_just_installed
    echo "Installing Bundles, please ignore key map error messages"
    :PlugInstall
endif
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" start configs
syntax on
color sea     " 设置背景主题
color ron     " 设置背景主题
"set guifont=文泉驿等宽微米黑:Courier_New:h10:cANSI   " 设置字体
set showcmd         " 输入的命令显示出来，看的清楚些
set shortmess=atI   " 启动的时候不显示那个援助乌干达儿童的提示
set nocompatible  "去掉讨厌的有关vi一致性模式，避免以前版本的一些bug和局限
set number
set relativenumber
set expandtab
set tabstop=4
set softtabstop=4
set shiftwidth=4
set hlsearch
set incsearch
set ls=2
set completeopt=menu,longest
set autoread
set clipboard+=unnamed
set magic                   " 设置魔术
"set guioptions-=T           " 隐藏工具栏
"set guioptions-=m           " 隐藏菜单栏
set noeb
set confirm
set ignorecase
set wildmenu
set backspace=2
set linespace=0
set whichwrap+=<,>,h,l
set selection=exclusive
set selectmode=mouse,key
set report=0
set fillchars=vert:\ ,stl:\ ,stlnc:\
set scrolloff=3
set mouse=v
set statusline+=%{SyntasticStatuslineFlag()}
set wildmode=list:longest
set tags=tags;
set autochdir
set history=1000
set langmenu=zh_CN.UTF-8
set helplang=cn
set cmdheight=2
set iskeyword+=_,$,@,%,#,-
set directory=~/.vim/dirs/tmp     " directory to place swap files in
set backup                        " make backup files
set backupdir=~/.vim/dirs/backups " where to put backup files
set undofile                      " persistent undos - undo after you re-open the file
set undodir=~/.vim/dirs/undos
set viminfo+=n~/.vim/dirs/viminfo
set pastetoggle=<F2>

filetype plugin indent on

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""实用设置
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
if has("autocmd")
    autocmd BufReadPost *
                \ if line("'\"") > 0 && line("'\"") <= line("$") |
                \   exe "normal g`\"" |
                \ endif
endif

" Enable omni completion.
autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
autocmd FileType html setlocal shiftwidth=4 tabstop=4 softtabstop=4
autocmd FileType javascript setlocal shiftwidth=4 tabstop=4 softtabstop=4
"autocmd FileType c,cpp map <buffer> <leader><space> :w<cr>:make<cr>
autocmd vimenter * if !argc() | NERDTree | endif
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif
autocmd BufNewFile *.cpp,*.c,*.h,*.sh,*.bash,*.rb,*.py exec ":call SetTitle()"
autocmd BufNewFile * normal G
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Plugin key-mappings.
inoremap <expr><C-g>     neocomplete#undo_completion()
inoremap <expr><C-l>     neocomplete#complete_common_string()
" Recommended key-mappings.
" <CR>: close popup and save indent.
inoremap <silent> <CR> <C-r>=<SID>my_cr_function()<CR>
" <C-h>, <BS>: close popup and delete backword char.
inoremap <expr><C-h> neocomplete#smart_close_popup()."\<C-h>"
inoremap <expr><BS> neocomplete#smart_close_popup()."\<C-h>"
" Close popup by <Space>.
"inoremap <expr><Space> pumvisible() ? "\<C-y>" : "\<Space>"
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
map <F3> :NERDTreeToggle<CR>
map <F4> :TagbarToggle<CR>
map <F5> :call CompileRunGcc()<CR>
map <F6> :call FormartSrc()<CR><CR>
map <F7> :noh <CR>
map <F8> :call Rungdb()<CR>
map <C-F3> \be
map! <C-Z> <Esc>zzi
map! <C-O> <C-Y>,
map <C-A> ggVG$"+y
map <C-w> <C-w>w
map <M-Right> <c-w>l
map <M-Left> <c-w>h
map <M-Up> <c-w>k
map <M-Down> <c-w>j
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
imap <M-Right> <ESC><c-w>l
imap <F3> <ESC> :NERDTreeToggle<CR>
imap <C-k> <C-y>,
imap <C-t> <C-q><TAB>
imap <C-j> <ESC>
imap <C-v> <Esc>"*pa
imap <C-a> <Esc>^
imap <C-e> <Esc>$
imap <C-S-Right> <ESC>:tabn<CR>
imap <C-S-Left> <ESC>:tabp<CR>
imap <M-Left> <ESC><c-w>h
imap <M-Up> <ESC><c-w>k
imap <M-Down> <ESC><c-w>j
imap <C-J> <C-X><C-O>
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
vmap <expr> <S-M-LEFT> DVB_Drag('left')
vmap <C-c> "+y
vmap <expr> <S-M-RIGHT> DVB_Drag('right')
vmap <expr> <S-M-DOWN> DVB_Drag('down')
vmap <expr> <S-M-UP> DVB_Drag('up')
vmap <expr> D DVB_Duplicate()
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
nmap ,f :CtrlPLine<CR>
nmap <leader>e :Errors<CR>
nmap ,G :CtrlPBufTagAll<CR>
nmap ,g :CtrlPBufTag<CR>
nmap ,t :NERDTreeFind<CR>
nmap ,D :tab split<CR>:PymodePython rope.goto()<CR>
nmap ,o :RopeFindOccurrences<CR>
nmap md :!~/.vim/markdown.pl % > %.html <CR><CR>
nmap  -  <Plug>(choosewin)
nmap <leader>sn <plug>(signify-next-hunk)
nmap <leader>sp <plug>(signify-prev-hunk)
nmap ,m :CtrlPMRUFiles<CR>
nmap ,c :CtrlPCmdPalette<CR>
nmap ,wg :call CtrlPWithSearchText(expand('<cword>'), 'BufTag')<CR>
nmap ,wG :call CtrlPWithSearchText(expand('<cword>'), 'BufTagAll')<CR>
nmap ,wf :call CtrlPWithSearchText(expand('<cword>'), 'Line')<CR>
nmap ,we :call CtrlPWithSearchText(expand('<cword>'), '')<CR>
nmap ,pe :call CtrlPWithSearchText(expand('<cfile>'), '')<CR>
nmap ,wm :call CtrlPWithSearchText(expand('<cword>'), 'MRUFiles')<CR>
nmap ,wc :call CtrlPWithSearchText(expand('<cword>'), 'CmdPalette')<CR>
"nnoremap <Leader>fu :CtrlPFunky<Cr>
"nnoremap <C-n> :CtrlPFunky<Cr>
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" save as sudo
ca w!! w !sudo tee "%"
" colors for gvim
if has('gui_running')
    colorscheme wombat
endif

" store yankring history file there too
let g:yankring_history_dir = '~/.vim/dirs/'
" create needed directories if they don't exist
if !isdirectory(&backupdir)
    call mkdir(&backupdir, "p")
endif
if !isdirectory(&directory)
    call mkdir(&directory, "p")
endif
if !isdirectory(&undodir)
    call mkdir(&undodir, "p")
endif
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:indentLine_leadingSpaceEnabled = 1
let g:indentLine_leadingSpaceChar = '·'

let Tlist_Sort_Type = "name"    " 按照名称排序
let Tlist_Use_Right_Window = 1  " 在右侧显示窗口
let Tlist_Compart_Format = 1    " 压缩方式
let Tlist_Exist_OnlyWindow = 1  " 如果只有一个buffer，kill窗口也kill掉buffer
let Tlist_Auto_Open=0
let Tlist_Ctags_Cmd = '/usr/local/bin/ctags'
let Tlist_Show_One_File = 1 "不同时显示多个文件的tag，只显示当前文件的
let Tlist_File_Fold_Auto_Close = 1
let Tlist_Exit_OnlyWindow = 1 "如果taglist窗口是最后一个窗口，则退出vim
let Tlist_Use_Right_Window = 1 "在右侧窗口中显示taglist窗口

"let g:miniBufExplMapWindowNavVim = 1
"let g:miniBufExplMapWindowNavArrows = 1
"let g:miniBufExplMapCTabSwitchBufs = 1
"let g:miniBufExplModSelTarget = 1
let g:tagbar_autofocus = 1

let NERDTreeIgnore = ['\.pyc$', '\.pyo$']
let g:ctrlp_map = ',e'
let g:ctrlp_working_path_mode = 1

let g:syntastic_check_on_open = 1
let g:syntastic_enable_signs = 1
let g:syntastic_error_symbol = '✗'
let g:syntastic_warning_symbol = '⚠'
let g:syntastic_style_error_symbol = '✗'
let g:syntastic_style_warning_symbol = '⚠'
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 1
let g:syntastic_python_checkers=['pylint']

"let g:tabman_toggle = 'tl'
"let g:tabman_focus  = 'tf'

let g:AutoClosePumvisible = {"ENTER": "\<C-Y>", "ESC": "\<ESC>"}
let g:signify_vcs_list = [ 'git', 'hg' ]

let g:deoplete#enable_at_startup = 0
"Note: This option must set it in .vimrc(_vimrc).  NOT IN .gvimrc(_gvimrc)!
" Disable AutoComplPop.
let g:acp_enableAtStartup = 0
" Use neocomplete.
let g:neocomplete#enable_at_startup = 1
" Use smartcase.
let g:neocomplete#enable_smart_case = 1
" Set minimum syntax keyword length.
let g:neocomplete#sources#syntax#min_keyword_length = 3
let g:neocomplete#lock_buffer_name_pattern = '\*ku\*'

" Define dictionary.
let g:neocomplete#sources#dictionary#dictionaries = {
            \ 'default' : '',
            \ 'vimshell' : $HOME.'/.vimshell_hist',
            \ 'scheme' : $HOME.'/.gosh_completions'
            \ }

" Define keyword.
if !exists('g:neocomplete#keyword_patterns')
    let g:neocomplete#keyword_patterns = {}
endif
let g:neocomplete#keyword_patterns['default'] = '\h\w*'

" AutoComplPop like behavior.
"let g:neocomplete#enable_auto_select = 1

" Shell like behavior(not recommended).
"set completeopt+=longest
"let g:neocomplete#enable_auto_select = 1
"let g:neocomplete#disable_auto_complete = 1

" Enable heavy omni completion.
if !exists('g:neocomplete#sources#omni#input_patterns')
    let g:neocomplete#sources#omni#input_patterns = {}
endif
"let g:neocomplete#sources#omni#input_patterns.php = '[^. \t]->\h\w*\|\h\w*::'
let g:neocomplete#sources#omni#input_patterns.c = '[^.[:digit:] *\t]\%(\.\|->\)'
let g:neocomplete#sources#omni#input_patterns.cpp = '[^.[:digit:] *\t]\%(\.\|->\)\|\h\w*::'

" For perlomni.vim setting.
" https://github.com/c9s/perlomni.vim
let g:neocomplete#sources#omni#input_patterns.perl = '\h\w*->\h\w*\|\h\w*::'

" let g:airline_theme = 'syntastic'
" let g:airline#extensions#whitespace#enabled = 1

let g:choosewin_overlay_enable = 1

let g:airline_powerline_fonts = 0

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
highlight DiffAdd           cterm=bold ctermbg=none ctermfg=119
highlight DiffDelete        cterm=bold ctermbg=none ctermfg=167
highlight DiffChange        cterm=bold ctermbg=none ctermfg=227
highlight SignifySignAdd    cterm=bold ctermbg=237  ctermfg=119
highlight SignifySignDelete cterm=bold ctermbg=237  ctermfg=167
highlight SignifySignChange cterm=bold ctermbg=237  ctermfg=227
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
func! Rungdb()
    exec "w"
    exec "!g++ % -g -o %<"
    exec "!gdb ./%<"
endfunc
func FormartSrc()
    exec "w"
    if &filetype == 'c'
        exec "!astyle --style=ansi -a --suffix=none %"
    elseif &filetype == 'cpp' || &filetype == 'hpp'
        exec "r !astyle --style=ansi --one-line=keep-statements -a --suffix=none %> /dev/null 2>&1"
    elseif &filetype == 'py'||&filetype == 'python'
        exec "r !autopep8 -i --aggressive %"
    elseif &filetype == 'rs' || &filetype == 'rust'
        exec "! rustfmt %"
    else
        exec "normal gg=G"
        return
    endif
    exec "e! %"
endfunc
"结束定义FormartSrc

function! CtrlPWithSearchText(search_text, ctrlp_command_end)
    execute ':CtrlP' . a:ctrlp_command_end
    call feedkeys(a:search_text)
endfunction
function! s:my_cr_function()
    return (pumvisible() ? "\<C-y>" : "" ) . "\<CR>"
    " For no inserting <CR> key.
    "return pumvisible() ? "\<C-y>" : "\<CR>"
endfunction
func SetTitle()
    "如果文件类型为.sh文件
    if &filetype == 'sh'
        call setline(1,"\#!/usr/bin/env bash")
        call append(line("."),"# Created Time:".strftime("%Y-%m-%d %H:%M:%S"))
        call append(line(".")+1, "")
    elseif &filetype =='bash'
        call setline(1,"\#!/usr/bin/env bash")
        call append(line("."),"# Created Time:".strftime("%Y-%m-%d %H:%M:%S"))
        call append(line(".")+1, "")
    elseif &filetype == 'python'
        call setline(1,"#!/usr/bin/env python3")
        call append(line("."),"# -*- coding: UTF-8 -*-")
        call append(line(".")+1,"\"\"\"")
        call append(line(".")+2,"__created__=".strftime("'%Y-%m-%d %H:%M:%S'"))
        call append(line(".")+3,"\"\"\"")
        call append(line(".")+4, "")
"    elseif &filetype == 'c'
"        call append(line(".")+6, "#include<stdio.h>")
"        call append(line(".")+7, "")
"    elseif expand("%:e") == 'cpp'
"        call append(line(".")+6, "#include<iostream>")
"        call append(line(".")+7, "using namespace std;")
"        call append(line(".")+8, "")
"    elseif expand("%:e") == 'h'
"        call append(line(".")+6, "#ifndef _".toupper(expand("%:r"))."_H")
"        call append(line(".")+7, "#define _".toupper(expand("%:r"))."_H")
"        call append(line(".")+8, "#endif")
"    else
"        call setline(1, "/*************************************************************************")
"        call append(line("."), "	> File Name: ".expand("%"))
"        call append(line(".")+1, "	> Author: ")
"        call append(line(".")+2, "	> Mail: ")
"        call append(line("."),"# Created Time:".strftime("%Y-%m-%d %H:%M:%S"))
"        call append(line(".")+4, " ************************************************************************/")
    endif
    "新建文件后，自动定位到文件末尾
endfunc
func! CompileRunGcc()
    exec "w"
    if &filetype == 'c'
        exec "!g++ % -o %<"
        exec "!time ./%<"
    elseif &filetype == 'cpp'
        exec "!g++ % -o %<"
        exec "!time ./%<"
    elseif &filetype == 'java'
        exec "!javac %"
        exec "!time java %<"
    elseif &filetype == 'sh'
        :!time bash %
    elseif &filetype == 'python'
        exec "!time python3 %"
    elseif &filetype == 'html'
        exec "!firefox % &"
    elseif &filetype == 'go'
        exec "!go build %<"
        exec "!time go run %"
    elseif &filetype == 'rust'
        exec "!time cargo run"
    elseif &filetype == 'mkd'
        exec "!~/.vim/markdown.pl % > %.html &"
        exec "!firefox %.html &"
    endif
endfunc
