" 参考 https://vim.fandom.com/wiki/Use_Vim_like_an_IDE
" sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
"       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'

" PlugInstall PlugUpdate PlugUpgrade PlugStatus
" https://neovim.io/doc/user/provider.html
"  python3 -m pip install --user --upgrade pynvim
" gem install neovim
" yarn global add neovim
let g:python3_host_prog = '/usr/bin/python3'
let g:ruby_host_prog = '~/.local/share/gem/ruby/3.0.0/bin/neovim-ruby-host'
let g:loaded_perl_provider = 0

call plug#begin('~/.vim/plugged')
" 文件管理
Plug 'preservim/nerdtree'
Plug 'qpkorr/vim-renamer'       " 批量修改文件

" 注释
Plug 'tpope/vim-commentary'

" 编辑
Plug 'easymotion/vim-easymotion' " 跳转
Plug 'tpope/vim-surround' " 环绕符号,需要vhwo
Plug 'jiangmiao/auto-pairs' " 自动成对括号 类似Plugin 'Raimondi/delimitMate' 
Plug 'tpope/vim-repeat' " 重复操作
Plug 'ervandew/supertab' " tab键可以飞起来
Plug 'tpope/vim-unimpaired' " 一些不错的配置，可以让[]发挥奇效
Plug 'sjl/gundo.vim' " 显示历史记录和代码回滚

" 显示、主题
Plug 'ryanoasis/vim-devicons' " 图标插件
Plug 'dracula/vim', { 'as': 'dracula' } " 主题插件
Plug 'vim-airline/vim-airline' " 状态栏 类似Plug 'itchyny/lightline.vim' 
Plug 'luochen1990/rainbow' " 括号颜色
Plug 'Yggdroot/indentLine' " 缩进标尺

" 查找
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'yuki-yano/fzf-preview.vim', { 'branch': 'release/rpc' }

" 格式
Plug 'godlygeek/tabular' "文本对齐
Plug 'sbdchd/neoformat' "  formatting code
Plug 'junegunn/vim-easy-align' " 对齐

" git
Plug 'tpope/vim-fugitive' " git 插件
Plug 'airblade/vim-gitgutter' " 显示git变化

" 自动完成 =============coc======================
" 查看 :CocInfo
" 安装插件:CocInstall coc-git coc-fzf-preview
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" 语法检查
Plug 'dense-analysis/ale' 

" markdown
Plug 'dhruvasagar/vim-table-mode' " 自动表格, 使用`\tm` 就进入了表格模式, 会进行自动对齐
Plug 'instant-markdown/vim-instant-markdown', {'for': 'markdown', 'do': 'yarn install'}
" 先用上面的
" Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app && yarn install'  }

" 格式化包括markdown
Plug 'prettier/vim-prettier', {
  \ 'do': 'yarn install',
  \ 'for': ['javascript', 'typescript', 'css', 'less', 'scss', 'json', 'graphql', 'markdown', 'vue', 'svelte', 'yaml', 'html'] }

Plug 'plasticboy/vim-markdown' " markdkown 增强

" python
" Plug 'davidhalter/jedi-vim' " need install archlinux vim-jedi

" 代码片段
" 下面两个插件要配合使用，可以自动生成代码块
Plug 'SirVer/ultisnips' " 这是代码片段的引擎
Plug 'honza/vim-snippets' " 配上上面的引擎
" assuming you want to use snipmate snippet engine
" ActivateAddons vim-snippets ultisnips

" tag相关 安装cscope(类似ctags) tagbar类似（taglist）
Plug 'preservim/tagbar' " 需要配置,显示文档的层级 切换和跳转到代码中对应的变量和函数的位置 标签导航

" tmux needed
Plug 'tpope/vim-rsi'

Plug 'preservim/vimux'

Plug 'tpope/vim-obsession'

Plug 'christoomey/vim-tmux-navigator'
call plug#end()

" =================================配置==============================================
" 参考 http://vimdoc.sourceforge.net/htmldoc/options.html
" 不与 Vi 兼容（采用 Vim 自己的操作命令）
set nocp

" Helps force plugins to load correctly when it is turned back on below
filetype off

" 启用256色
set t_Co=256

" Turn on syntax highlighting打开语法高亮。自动识别代码，使用多种颜色显示
syntax on

" Security 0表示禁用
set modelines=0

" Show line numbers 显示行号
set number

" Show file stats 在状态栏显示光标的当前位置
set ruler

" 出错时，不要发出响声。
set noerrorbells

" Blink cursor on error instead of beeping (grr) 出错时，发出视觉提示，通常是屏幕闪烁。
set visualbell

" 自动切换工作目录
set autochdir

" 保留撤销历史
set undofile

" 编码设置   fileencoding默认和enc一样
set enc=utf-8
set fencs=utf-8,ucs-bom,shift-jis,gb18030,gbk,gb2312,cp936

" 增强模式中的命令行自动完成操作  
set wildmenu
set wildmode=longest:list,full

" Use a popup menu to show the possible completions.
set completeopt=longest,menuone

" 打开文件监视。如果在编辑过程中文件发生外部改变（比如被别的编辑器编辑了），就会发出提示。
set autoread

" 在底部显示，当前处于命令模式还是插入模式
set showmode

"设置显示标签栏
set showtabline=2

" menu and bottom messy code菜单乱码
source $VIMRUNTIME/delmenu.vim
source $VIMRUNTIME/menu.vim
"if s:windows
"    language messages en_US.utf-8
"endif

" 不备份
set nobackup

" 比如，键入的指令是2y3d，那么底部就会显示2y3，当键入d的时候，操作完成，显示消失
set showcmd

" Searching 高亮显示匹配结果
set hlsearch

" 输入搜索模式时，每输入一个字符，就自动跳到第一个匹配的结果
set incsearch

" 忽略大小写
set ignorecase

" 如果同时打开了ignorecase，那么对于只有一个大写字母的搜索词，将大小写敏感；
set smartcase

" 光标遇到圆括号、方括号、大括号时，自动高亮对应的另一个圆括号、方括号和大括号
set showmatch

" Status bar 是否显示状态栏。0 表示不显示，1 表示只在多窗口时显示，2 表示显示
set laststatus=2

" 带有如下符号的单词不要被换行分割  
set iskeyword+=_,$,@,%,#,-  

" 在被分割的窗口间显示空白，便于阅读  
set fillchars=vert:\ ,stl:\ ,stlnc:\ 

" Allow hidden buffers
set hidden

" Rendering
set ttyfast

" 查看默认:echo mapleader ，:help <leader> 查看更多，修改成space最好，左右都能按
let mapleader = "\<Space>"

" Cursor motion 垂直滚动时，光标距离顶部/底部的位置
set scrolloff=3

" 保留撤销历史
set undofile

" 增加对于HTML文件中的尖括号的匹配 use % to jump between pairs
set matchpairs+=<:>

" 退格键（backspace）不能用或者set backspace=2
set backspace=indent,eol,start

" 只有遇到指定的符号（比如空格、连词号和其他标点符号），才发生折行。也就是说，不会在单词内部折行
set linebreak

" Whitespace
" 自动折行，即太长的行分成几行显示
set wrap

set textwidth=79
set formatoptions=tcqrn1

" 按下 Tab 键时，Vim 显示的空格数
set tabstop=2
set shiftwidth=2

" Tab 转为多少个空格
set softtabstop=2

" 由于 Tab 键在不同的编辑器缩进不一致，该设置自动将 Tab 转为空格
set expandtab
set noshiftround

" 按下回车键后，下一行的缩进会自动跟上一行的缩进保持一致
set autoindent

" 如果行尾有多余的空格（包括 Tab 键），该配置将让这些空格显示成可见的小方块。
set lcs=tab:»\|,trail:■,eol:¬
set list

" 显示光标所在的当前行的行号，其他行都为相对于该行的相对行号
set relativenumber

" 设置 alt 键不映射到菜单栏
set winaltkeys=no

" 光标所在的当前行高亮
set cursorline

" 鼠标支持
if has('mouse')
    set mouse=a
    set selectmode=mouse,key
    set nomousehide
endif

" 共享剪贴板 Using only unnamedplus on Linux
set clipboard+=unnamedplus

"配色方案
set background=dark
colorscheme dracula

" File type
if has("autocmd")
  autocmd BufNewFile,BufReadPost *.as      set filetype=actionscript
  autocmd BufNewFile,BufReadPost *.mxml    set filetype=mxml
  autocmd BufNewFile,BufReadPost *.jsfl    set filetype=javascript
  autocmd BufNewFile,BufReadPost *.json    set filetype=json
  autocmd BufNewFile,BufReadPost *.less    set filetype=less
  autocmd BufNewFile,BufReadPost *.sass    set filetype=sass
  autocmd BufNewFile,BufReadPost *.scss    set filetype=scss
  autocmd BufNewFile,BufReadPost *.coffee  set filetype=coffee
  autocmd BufNewFile,BufReadPost *.ts      set filetype=typescript
  autocmd BufNewFile,BufReadPost *.jad     set filetype=java
endif

" File indent
" sw  - Set shiftwidth  - Indent shifts by # spaces
" sts - Set softtabstop - Indent tabs by # spaces
" ts  - Set tabstop     - Indent tabs by # spaces
" et  - Set expandtab   - Use spaces instead of tabs
" si  - Set smartindent - File type based indentation
" 开启文件类型检查，并且载入与该类型对应的缩进规则。比如，如果编辑的是.py文件，Vim 就是会找 Python 的缩进规则~/.vim/indent/python.vim
if has("autocmd")
  filetype plugin on
  filetype indent on
  autocmd FileType apache       setlocal sw=4 sts=4 ts=4 et si
  autocmd FileType actionscript setlocal sw=4 sts=4 ts=4 et si
  autocmd FileType c            setlocal sw=4 sts=4 ts=4 et si
  autocmd FileType cpp          setlocal sw=4 sts=4 ts=4 et si
  autocmd FileType coffee       setlocal sw=2 sts=2 ts=2 et si
  autocmd FileType cs           setlocal sw=4 sts=4 ts=4 et si
  autocmd FileType css          setlocal sw=2 sts=2 ts=2 et si
  autocmd FileType diff         setlocal sw=4 sts=4 ts=4 et si
  autocmd FileType html         setlocal sw=4 sts=4 ts=4 et si
  autocmd FileType java         setlocal sw=4 sts=4 ts=4 noet si
  autocmd FileType javascript   setlocal sw=2 sts=2 ts=2 et si
  autocmd FileType json         setlocal sw=2 sts=2 ts=2 et si
  autocmd FileType less         setlocal sw=2 sts=2 ts=2 et si
  autocmd FileType lua          setlocal sw=2 sts=2 ts=2 et si
  autocmd FileType mxml         setlocal sw=4 sts=4 ts=4 et si
  autocmd FileType perl         setlocal sw=4 sts=4 ts=4 et si
  autocmd FileType php          setlocal sw=4 sts=4 ts=4 et si
  autocmd FileType python       setlocal sw=4 sts=4 ts=4 tw=79 et si
  autocmd FileType ruby         setlocal sw=2 sts=2 ts=2 et si
  autocmd FileType haml         setlocal sw=2 sts=2 ts=2 et si
  autocmd FileType sass         setlocal sw=2 sts=2 ts=2 et si
  autocmd FileType scss         setlocal sw=2 sts=2 ts=2 et si
  autocmd FileType sh           setlocal sw=2 sts=2 ts=2 et si
  autocmd FileType sql          setlocal sw=4 sts=4 ts=4 et si
  autocmd FileType typescript   setlocal sw=4 sts=4 ts=4 et si
  autocmd FileType vb           setlocal sw=4 sts=4 ts=4 et si
  autocmd FileType vim          setlocal sw=2 sts=2 ts=2 et si
  autocmd FileType wsh          setlocal sw=4 sts=4 ts=4 et si
  autocmd FileType xhtml        setlocal sw=4 sts=4 ts=4 et si
  autocmd FileType xml          setlocal sw=4 sts=4 ts=4 et si
  autocmd FileType yaml         setlocal sw=2 sts=2 ts=2 et si
  autocmd FileType zsh          setlocal sw=2 sts=2 ts=2 et si
  autocmd FileType scala        setlocal sw=4 sts=4 ts=4 noet si
endif

" 打开时光标放在上次退出时的位置
if has("autocmd")
    autocmd BufReadPost *
        \ if line("'\"") > 0 && line ("'\"") <= line("$") |
        \   exe "normal g'\"" |
        \ endif
endif

"==============自定义按键=========================
"使用 <Space>o 创建一个新文件:
nnoremap <Leader>o :CtrlP<CR>

" 使用 <Space>w 保存文件（比 :w<Enter> 明显快得多）：
nnoremap <Leader>w :w<CR>

"使用 <Space>p 与 <Space>y 进行剪切板拷贝、粘贴：
vmap <Leader>y "+y
vmap <Leader>d "+d
nmap <Leader>p "+p
nmap <Leader>P "+P
vmap <Leader>p "+p
vmap <Leader>P "+P

" 依次遍历子窗口
nnoremap nw <C-W><C-W>
" 跳转至右方的窗口
nnoremap <Leader>lw <C-W>l
" 跳转至左方的窗口
nnoremap <Leader>hw <C-W>h
" 跳转至上方的子窗口
nnoremap <Leader>kw <C-W>k
" 跳转至下方的子窗口
nnoremap <Leader>jw <C-W>j
" 定义快捷键在结对符之间跳转
nmap <Leader>M %

" 使用 <Space><Space> 进入 Vim 编辑模式：
nmap <Leader><Leader> V

" ==============自定义快捷========================
map <leader>h :noh<CR>
map <leader>r :call ToggleLineNumber()<CR>
map <leader>t :NERDTreeToggle<CR>
map <leader>n :set number<CR>

" Buffers
nnoremap <leader>q :Bdelete<CR>
nnoremap <Tab> :bn<CR>
nnoremap <S-Tab> :bp<CR>





" ==============插件配置=========================

" ======================python=======================
map <F5> :Autopep8<CR> :w<CR> :call RunPython()<CR>
function RunPython()
    let mp = &makeprg
    let ef = &errorformat
    let exeFile = expand("%:t")
    setlocal makeprg=python\ -u
    set efm=%C\ %.%#,%A\ \ File\ \"%f\"\\,\ line\ %l%.%#,%Z%[%^\ ]%\\@=%m
    silent make %
    copen
    let &makeprg = mp
    let &errorformat = ef
endfunction


" ===================NERDTree 配置=====================
let NERDTreeChDirMode=1
"显示书签"
let NERDTreeShowBookmarks=1
"设置忽略文件类型"
let NERDTreeIgnore=['\~$', '\.pyc$', '\.swp$','\.pyo$', '__pycache__$']
"窗口大小"
let NERDTreeWinSize=40
"按 F2 开启和关闭目录树"
map <F2> :NERDTreeToggle<CR>

"=======================coc===========================
" GoTo code navigation.
nmap <leader>gd <Plug>(coc-definition)
nmap <leader>gy <Plug>(coc-type-definition)
nmap <leader>gi <Plug>(coc-implementation)
nmap <leader>gr <Plug>(coc-references)
nmap <leader>rr <Plug>(coc-rename)
nmap <leader>g[ <Plug>(coc-diagnostic-prev)
nmap <leader>g] <Plug>(coc-diagnostic-next)
nmap <silent> <leader>gp <Plug>(coc-diagnostic-prev-error)
nmap <silent> <leader>gn <Plug>(coc-diagnostic-next-error)
nnoremap <leader>cr :CocRestart

"===================tagbar==============================
"	Tagbar
map <F3> :TagbarToggle<CR> "将Tagbar映射到F3
let g:tagbar_width = 25
" 自动打开 Tagbar 插件
autocmd BufReadPost *.cpp,*.c,*.h,*.cc,*.cxx call tagbar#autoopen()

"======================gundo===========================
nnoremap <F5> :GundoToggle<CR>

" ====================vimux===============================
" Prompt for a command to run
map <Leader>vp :VimuxPromptCommand<CR>
" Run last command executed by VimuxRunCommand
map <Leader>vl :VimuxRunLastCommand<CR>
" Inspect runner pane
map <Leader>vi :VimuxInspectRunner<CR>
" Zoom the tmux runner pane
map <leader>vz :VimuxZoomRunner<CR>

"==============iamcco/markdown-preview=====================
nmap <C-s> <Plug>MarkdownPreview
nmap <M-s> <Plug>MarkdownPreviewStop
nmap <C-p> <Plug>MarkdownPreviewToggle
