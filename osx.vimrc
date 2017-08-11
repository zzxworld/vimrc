" 不显示启动提示信息
set shortmess=atI

" 自动定位当前目录
set autochdir

" 编码设置
set encoding=utf-8
set termencoding=utf-8
set fileencoding=utf-8
set fileencodings=ucs-bom,utf-8,cp936,gb18030,big5,euc-jp,euc-kr,latin1,gbk,gb2312
set langmenu=zh_CN.utf-8

set laststatus=2                    " 显示状态栏
set tabstop=4                       " 制表符的长度
set softtabstop=4                   " 制表符长度
set shiftwidth=4                    " 缩进长度
set expandtab                       " 使用空格替代制表符
set smarttab                        " 智能制表符
set autoindent                      " 自动缩进
set smartindent                     " 只能缩进
set number                          " 显示行号
set ruler                           " 显示位置指示器
set ignorecase                      " 检索时忽略大小写
set hls                             " 搜索时高亮显示匹配项
set incsearch                       " 实时搜索
set nobackup                        " 不生成备份文件
set noswapfile                      " 不生成交换文件
set foldlevelstart=99

syn on                              " 语法支持

" 执行粘贴操作时不替换剪贴板中的内容
xnoremap p pgvy

" keyborad mapping
map <c-l> :tabn<CR>                 " 切换标签页的快捷键
map <c-w> <c-w>w                    " 切换窗口的快捷键

filetype off                        " required
set rtp+=~/.vim/bundle/Vundle.vim   " set runtime path
call vundle#begin()                 " initialize

" 使用 Vundle 管理自已
Plugin 'VundleVim/Vundle.vim'

" 文件管理
Plugin 'scrooloose/nerdtree'

" html 快速编辑
Plugin 'mattn/emmet-vim'

" 样式库
Plugin 'chriskempson/base16-vim'

" 配色
Plugin 'flazz/vim-colorschemes'

" 状态栏
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'

" 函数列表
Plugin 'majutsushi/tagbar'

" PHP
Plugin 'StanAngeloff/php.vim'

" Rails
Plugin 'tpope/vim-rails'

" Javascript 支持
Plugin 'pangloss/vim-javascript'

" Coffee script
Plugin 'kchmck/vim-coffee-script'

" markdown 支持
Plugin 'godlygeek/tabular'
Plugin 'plasticboy/vim-markdown'
Plugin 'zzxworld/vim-image_paste'

" 代码补全
Plugin 'SirVer/ultisnips'
Plugin 'honza/vim-snippets'

" 引号和括号补全
Plugin 'Raimondi/delimitMate'

" 空格和空行提示
Plugin 'bronson/vim-trailing-whitespace'

" 注释代码
Plugin 'tomtom/tcomment_vim'

" Git Wrapper
Plugin 'tpope/vim-fugitive'

" HTML5
Plugin 'othree/html5.vim'

call vundle#end()
filetype plugin indent on

" Airline
let g:airline_powerline_fonts = 1
let g:airline_theme = 'tomorrow'
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#show_buffers = 0
let g:airline#extensions#tabline#show_close_button = 0
let g:airline#extensions#tabline#show_splits = 0
let g:airline#extensions#tabline#show_tab_type = 0
let g:airline#extensions#tabline#show_tab_nr = 0
let g:airline#extensions#tabline#tab_min_count = 2
let g:airline#extensions#tabline#fnamecollapse = 1
let g:airline#extensions#tabline#left_sep = ''
let g:airline#extensions#tabline#left_alt_sep = ''

" ultisnips
let g:UltiSnipsExpandTrigger = "<tab>"
let g:UltiSnipsJumpForwardTrigger = "<tab>"

" nerdtree
map <c-o> :NERDTreeToggle<cr>       " 定义打开的快捷键
let NERDTreeWinPos=0    " NERDTree 窗口显示位置(0:左边, 1:右边)
let NERDTreeQuitOnOpen=1        " NERDTree 打开文件时是否关闭文件窗口
let NERDTreeHighlightCursorline=1
let NERDTreeIgnore=['\.pyc$', '\.tar\.gz$','^env$', '__pycache__', '\.egg\-info$', '^cache$', 'node_modules']      " 隐藏指定格式的文件或目录
let NERDTreeShowHidden=0      " 不显示隐藏文件

" emmet-vim
let g:user_emmet_expandabbr_key='<c-e>'

" vim-colorshemes
set t_Co=256
" set background=dark
" colorscheme seoul256-light  "Light
" colorscheme burnttoast256  "Dark
" colorscheme desert256  "Dark
" colorscheme desert256v2  "Blue
" colorscheme lizard256  "Dark
" colorscheme seoul256  "Dark
colorscheme wombat256  "Dark
" highlight clear SignColumn
" highlight VertSplit    ctermbg=236
" highlight ColorColumn  ctermbg=237
" highlight LineNr       ctermbg=253 ctermfg=248  " 行号配色
" highlight CursorLineNr ctermbg=236 ctermfg=240
" highlight CursorLine   ctermbg=236
" highlight StatusLineNC ctermbg=238 ctermfg=0
" highlight StatusLine   ctermbg=240 ctermfg=12
" highlight IncSearch    ctermbg=3   ctermfg=1
" highlight Search       ctermbg=1   ctermfg=3
" highlight Visual       ctermbg=3   ctermfg=0
" highlight Pmenu        ctermbg=240 ctermfg=12
" highlight PmenuSel     ctermbg=3   ctermfg=1
" highlight SpellBad     ctermbg=0   ctermfg=1

" tagbar
let g:tagbar_width=30 " 设置宽度
map <c-k> :TagbarToggle<cr> " 面板快捷键

" tabular
let mapleader=','
if exists(":Tabularize")
    nmap <Leader>a= :Tabularize /=<CR>
    vmap <Leader>a= :Tabularize /=<CR>
    nmap <Leader>a: :Tabularize /:\zs<CR>
    vmap <Leader>a: :Tabularize /:\zs<CR>
endif

" 格式化 JSON
com! FormatJSON %!python -m json.tool

" set ruby blank
autocmd Filetype ruby,eruby,coffee,yaml setlocal ts=2 sts=2 sw=2
