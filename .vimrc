set nocompatible
source $VIMRUNTIME/vimrc_example.vim

"打开文件类型检测功能
filetype on
" ---------------------------------------------------------------------
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
Plugin 'tpope/vim-fugitive'
Bundle 'Valloric/YouCompleteMe'
" plugin from http://vim-scripts.org/vim/scripts.html
Plugin 'L9'
" Git plugin not hosted on GitHub
Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
" Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Avoid a name conflict with L9
"Plugin 'user/L9', {'name': 'newL9'}

" All of your Plugins must be added before the following line
call vundle#end()            " required
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line
" ---------------------------------------------------------------------
syntax enable
" 允许用指定语法高亮配色方案替换默认方案
syntax on
"允许使用插件
" filetype plugin on
filetype plugin indent on
"其实，上面这一条命令，可以分为三条命令：
"filetype on
"filetype plugin on
"filetype indent on

"
" 不同中文编码显示
" 同时支持GBK和UTF-8编码
"
set fileencodings=ucs-bom,utf-8,chinese
set enc=utf-8
"历史命令保存行数 
set history=100
"取消自动备份及产生swp文件
set nobackup
set nowb
set noswapfile
"设置持久撤销
set undofile    " Save undo's after file closes
set undodir=$HOME/.vim/undo " where to save undo histories
set undolevels=100   " How many undos
set undoreload=1000  " number of lines to save for undo 
" 显示行号
set number
"防止特殊符号无法正常显示,如五角星等1"
set ambiwidth=double
"自动检测文件内容变更
set autoread
"粘贴时保持格式
set paste

" 高亮显示搜索结果
set hlsearch
" 开启实时搜索功能,搜索时在未完全输入完毕要检索的文本时就开始检索
set incsearch
" 总是显示状态栏
" 状态条，显示字节数，列数，行数，当前行等信息
set statusline=%F%m%r%h%w\ [FORMAT=%{&ff}]\ [TYPE=%Y]\ [ASCII=\%03.3b]\ [HEX=\%02.2B]\ [POS=%04l,%04v][%p%%]\ [LEN=%L]
set laststatus=2 " always show the status line
" 显示光标当前位置
set ruler
" 高亮显示当前行/列
set cursorline
set cursorcolumn
" 搜索时大小写不敏感
set ignorecase
" 关闭兼容模式
set nocompatible
" vim 自身命令行模式智能补全
set wildmenu
" 禁止折行,页面不够显示一行不进行拆行
" set nowrap
" 自适应不同语言的智能缩进
filetype indent on
" 将制表符扩展为空格
set expandtab
" 设置编辑时制表符占用空格数
set tabstop=4
" 设置格式化时制表符占用空格数
set shiftwidth=4
" 让 vim 把连续数量的空格视为一个制表符
set softtabstop=4
"使用自动对起，也就是把当前行的对起格式应用到下一行.
set autoindent 
"依据上面的对起格式，智能的选择对起方式，对于类似C语言编.
set smartindent 
"设置匹配模式，显示括号配对情况。
set showmatch

" 打开 C/C++ 风格的自动缩进。
set cin 
"设定 C/C++ 风格自动缩进的选项
set cino=:4g4t4(sus 
"当vim进行编辑时，如果命令错误，会发出一个响声，该设置去掉响
set vb t_vb= 
" 当窗口垂直滚动时上下保的行数set 7 lines to the curors - when moving vertical..
set so=7
" 命令行高度(行数)The commandbar is 2 high
" set cmdheight=2
" 高亮显示当前选择的词
autocmd CursorMoved * exe exists("HlUnderCursor")?HlUnderCursor?printf('match IncSearch /\V\<%s\>/', escape(expand('<cword>'), '/\')):'match none':""
let HlUnderCursor=1
" 关闭高亮显示当前选择的词
" let HlUnderCursor=0
" 配色方案
colorscheme darkblue
"colorscheme elflord
"colorscheme industry

" 禁止光标闪烁
" set gcr=a:block-blinkon0
" 禁止显示滚动条
"set guioptions-=l
"set guioptions-=L
"set guioptions-=r
"set guioptions-=R
" 禁止显示菜单和工具条
"set guioptions-=m
"set guioptions-=T


