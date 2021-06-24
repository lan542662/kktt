# vim
Just make sure not to put any line in your vimrc that you don’t understand.

我知道要掌握一个系统，其实看问题就是要系统的看，就是要掌握他的方方面面，一个都不能少。
我知道要掌握系统的方方面面就要有战略，有规划，有系统，有目标和方法的推进，在所有的方法中一定有一条最好的路，而且那是唯一正确的
不管遇到什么，一次性就完成，那就是个作品，一次完成不了，永远都完成不了。

[参考](https://linuxhint.com/vimrc_tutorial/)
[参考](https://linuxhint.com/vim_install_plugins/)

- Once the vimrc is properly configured, restart Vim or reload the vimrc file.

`:so %`

- Finally, run the following command to start the installation of all the Vim plugins that were configured for vim-plug.

:PlugInstall

开始配置
https://github.com/joshukraine/linux-dotfiles/blob/master/vimrc
https://github.com/jonhoo/configs/blob/master/editor/.config/nvim/init.vim
https://github.com/amix/vimrc
https://github.com/siduck76/neovim-dots
https://github.com/theniceboy/nvim/blob/master/README_cn.md
https://github.com/mantinband/best-vim-config-ever/blob/master/.vimrc
https://github.com/skwp/dotfiles/blob/master/vimrc


https://github.com/sonph/onehalf
https://github.com/dracula/vim
https://gist.github.com/simonista/8703722
https://github.com/topics/vim-plugin
https://github.com/Carton/my-vim
https://www.hanleylee.com/usage-of-vim-editor-plugin.html
https://vim.hizdm.cn/command/unimpaired-vim.html
https://zhuanlan.zhihu.com/p/104674753
https://xiaozhou.net/build-your-go-ide-2015-07-18.html
https://www.ctolib.com/docs/sfile/use-vim-as-ide/5.html UltiSnips 的 tab 键与 YCM 冲突，重新设定
https://github.com/ryanoasis/vim-devicons/wiki/Installation
https://wizardforcel.gitbooks.io/use-vim-as-ide/content/4.html
https://www.kancloud.cn/shangyewangchuan/vs_code/972946
https://www.cnblogs.com/nineep/p/6781974.html
https://wklken.me/posts/2013/06/11/linux-my-vim.html
https://learnku.com/articles/24924?order_by=vote_count&
https://www.jiqizhixin.com/articles/2020-06-05-4
https://vimawesome.com/?q=cat%3Acompletion
https://developer.aliyun.com/article/72732
https://github.com/wsdjeg/vim-galore-zh_cn
https://dev.to/christalib/i-spent-3-years-configuring-n-vim-and-this-what-i-learnt-22on
https://vimawesome.com/?q=tag:lsp
https://blog.csdn.net/bc516125634/article/details/88858097
https://developer.aliyun.com/article/353108
https://gitee.com/xianyo/vim/blob/master/vimrc
https://github.com/zhlinh/mivim/blob/master/.vimrc
https://www.bbsmax.com/A/WpdKDM1rzV/
https://gitee.com/liwenhui/vimleo#4.2
https://github.com/wklken/k-vim/blob/master/vimrc.bundles
https://xiaozhou.net/learn-the-command-line-vim-2018-08-08.html
https://www.cnblogs.com/Leo_wl/p/3644230.html
https://blog.csdn.net/Mason_Mao/article/details/80984726
https://www.cnblogs.com/highway-9/p/5984285.html
https://github.com/vimwiki/vimwiki
https://www.cnblogs.com/xuyaowen/p/vim_usage.html
https://www.pianshen.com/article/8721350495/
https://gitconnected.com/learn/vim

参考插件 https://mendo.zone/fun/neovim-setup-haskell/
[vim插件](https://wiki.nikitavoloboev.xyz/text-editors/vim/vim-plugins)
https://wiki.thingsandstuff.org/Vim

```
需要安装python,yarn
"让Vim工作在不兼容模式下
set nocp

" Helps force plugins to load correctly when it is turned back on below
filetype off

" archlinux 先安装 yay nerd-fonts-fira-code,然后安装以下
Plug 'ryanoasis/vim-devicons' " 图标插件，需要https://github.com/ryanoasis/nerd-fonts
Plug 'dracula/vim', { 'as': 'dracula' } " 主题插件
Plug 'vim-airline/vim-airline' " 应该不需要Powerline了
Plug 'preservim/nerdtree' " 文件管理
Plug 'preservim/tagbar' " 需要配置,显示文档的层级 切换和跳转到代码中对应的变量和函数的位置 标签导航
Plug 'Yggdroot/indentLine' " 缩进标尺
rainbow
Plug 'easymotion/vim-easymotion' " 跳转
Plug 'ycm-core/YouCompleteMe' " 参考配置 https://github.com/ycm-core/YouCompleteMe#linux-64-bit 安装相关语言的库

" 模糊查找
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'Yggdroot/LeaderF', { 'do': ':LeaderfInstallCExtension' } "考虑

" 批量注释
" Plug 'preservim/nerdcommenter'
Plug 'tpope/vim-commentary' " 更好的注释

" 下面两个插件要配合使用，可以自动生成代码块
Plug 'SirVer/ultisnips' " 这是代码片段的引擎
Plug 'honza/vim-snippets' " 配上上面的引擎

Plug 'tpope/vim-surround' " 环绕符号成对修改
Plug 'tpope/vim-repeat' " 重复操作
Plug 'tpope/vim-unimpaired' " 映射了很多实用的快捷键
Plug 'terryma/vim-multiple-cursors' " 真正的sublime多光标
Plug 'dense-analysis/ale'                           " 提示语法错误
Plug 'easymotion/vim-easymotion'                    " 空格任意跳转
Plug 'bronson/vim-visual-star-search'
Plug 'jiangmiao/auto-pairs'                         " 匹配括号
Plug 'dhruvasagar/vim-table-mode'                   " 自动表格, 使用`\tm` 就进入了表格模式, 会进行自动对齐

" ============= Appearance ============
Plug 'joshdick/onedark.vim'
Plug 'ap/vim-css-color'              " 显示 css 颜色
Plug 'machakann/vim-highlightedyank' " 使 yank 的文档半透明高亮
Plug 'mhinz/vim-signify'             " 显示当前行的 git 状态
Plug 'Yggdroot/indentLine'           " 显示缩进线
Plug 'itchyny/lightline.vim'         " 显示底部导航栏

"============== Function ==============
Plug 'qpkorr/vim-renamer'       " 批量修改文件的神器, 使用 :Ren 进行编辑与保存, 完成后退出即可
Plug 'Chiel92/vim-autoformat'   " 自动格式化文档
Plug 'skywind3000/asyncrun.vim' " 异步执行
Plug 'tpope/vim-fugitive'       " git 插件
Plug 'jiazhoulvke/jianfan'      " 简繁转换 Tcn, Scn
Plug 'simnalamburt/vim-mundo'   " 显示修改历史


"" Ruby and Rails helpers
" Rails helpers
Plug 'tpope/vim-rails'
" Ruby Blocks, requires textobj-user
Plug 'kana/vim-textobj-user'
Plug 'nelstrom/vim-textobj-rubyblock'
Plug 'vim-ruby/vim-ruby'
Plug 'prabirshrestha/vim-lsp'
Plug 'prabirshrestha/asyncomplete.vim'
Plug 'prabirshrestha/asyncomplete-lsp.vim'
Plug 'mattn/vim-lsp-settings'
Plug 'prabirshrestha/async.vim'

" 对齐插件,我最喜欢的
Plugin 'godlygeek/tabular'
" Syntax Checking
Plugin 'scrooloose/syntastic'

" Git wrapper
Plugin 'tpope/vim-fugitive'

Plug 'vim-syntastic/syntastic' " 语法
"============= markdown ================
Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app && yarn install'  }
Plug 'godlygeek/tabular' "文本对齐, 使用 :Tabularize /= 可以等号对齐多行
Plug 'plasticboy/vim-markdown' " markdkown 增强
Plug 'instant-markdown/vim-instant-markdown', {'for': 'markdown'} " markdown即时预览

Plugin 'vim-scripts/taglist.vim'

ActivateAddons vim-snippets ultisnips



" Turn on syntax highlighting
syntax on

" For plugins to load correctly
filetype plugin indent on


" Security
set modelines=0

" Show line numbers
set number

" Show file stats
set ruler

" Blink cursor on error instead of beeping (grr)
set visualbell

" Encoding
set encoding=utf-8

"编码设置  
set enc=utf-8  
set fencs=utf-8,ucs-bom,shift-jis,gb18030,gbk,gb2312,cp936  

"语言设置  
set langmenu=zh_CN.UTF-8 

" 增强模式中的命令行自动完成操作  
set wildmenu  

" 为特定文件类型载入相关缩进文件  
filetype indent on 

" Whitespace
set wrap
set textwidth=80
set formatoptions=tcqrn1
set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab
set noshiftround

" Cursor motion
set scrolloff=3
set backspace=indent,eol,start
set matchpairs+=<:> " use % to jump between pairs
runtime! macros/matchit.vim

" 查看默认:echo mapleader ，:help <leader> 查看更多，修改成space最好，左右都能按
let mapleader = "\<Space>"

" Move up/down editor lines
nnoremap j gj
nnoremap k gk

" Allow hidden buffers
set hidden

" Rendering
set ttyfast

" Status bar
set laststatus=2

" 带有如下符号的单词不要被换行分割  
set iskeyword+=_,$,@,%,#,-  

" 在被分割的窗口间显示空白，便于阅读  
set fillchars=vert:\ ,stl:\ ,stlnc:\ 

" Last line
set showmode
set showcmd

" Searching
nnoremap / /\v
vnoremap / /\v
set hlsearch
set incsearch
set ignorecase
set smartcase
set showmatch
map <leader><space> :let @/=''<cr> " clear search

" Remap help key.
inoremap <F1> <ESC>:set invfullscreen<CR>a
nnoremap <F1> :set invfullscreen<CR>
vnoremap <F1> :set invfullscreen<CR>

" Textmate holdouts

" Formatting
map <leader>q gqip

" Visualize tabs and newlines
set listchars=tab:▸\ ,eol:¬
" Uncomment this to enable by default:
" set list " To enable by default
" Or use your leader key + l to toggle on/off
map <leader>l :set list!<CR> " Toggle tabs and EOL

" Color scheme (terminal)
set t_Co=256
set background=dark

set magic " unbreak vim's regex implementation

let mapleader = "\<space>"
nnoremap \\ :noh<cr> " Clear higlighting
nnoremap <silent> <F5> :let _s=@/<Bar>:%s/\s\+$//e<Bar>:let @/=_s<Bar>:nohl<CR> " Trim trailing spaces
nnoremap Y y$
nnoremap cc :center<cr>
inoremap <C-c> <ESC>
" Ex mode is fucking dumb
nnoremap Q <Nop>

" Preferences for various file formats
autocmd FileType c setlocal noet ts=8 sw=8 tw=80
autocmd FileType h setlocal noet ts=8 sw=8 tw=80
autocmd FileType cpp setlocal noet ts=8 sw=8 tw=80
autocmd FileType s setlocal noet ts=8 sw=8
autocmd FileType go setlocal noet ts=4 sw=4
autocmd FileType hy setlocal filetype=lisp
autocmd FileType sh setlocal noet ts=4 sw=4
autocmd BufRead,BufNewFile *.js setlocal et ts=2 sw=2
autocmd FileType html setlocal et ts=2 sw=2
autocmd FileType htmldjango setlocal et ts=2 sw=2
autocmd FileType ruby setlocal et ts=2 sw=2
autocmd FileType scss setlocal et ts=2 sw=2
autocmd FileType yaml setlocal et ts=2 sw=2
autocmd FileType markdown setlocal tw=80 et ts=2 sw=2
autocmd FileType text setlocal tw=80
autocmd FileType meson setlocal noet ts=2 sw=2
autocmd FileType bzl setlocal et ts=2 sw=2
autocmd FileType typescript setlocal et ts=2 sw=2
autocmd FileType python setlocal et ts=4 sw=4
autocmd BufNewFile,BufRead *.ms set syntax=python ts=4 sw=4 noet

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

" 使用 ppppp 进行多行多次粘贴操作
vnoremap <silent> y y`]
vnoremap <silent> p p`]
nnoremap <silent> p p`]

" 快速选择粘贴的文本
noremap gV `[v`]


" Custom shortcuts
map <leader>h :noh<CR>
map <leader>r :call ToggleLineNumber()<CR>
map <leader>t :NERDTreeToggle<CR>
map <leader>n :set number<CR>
```
综合
https://github.com/kktt007/archlinux/blob/cdf6a6799750e71dd01f528c44017fe5bd059ad6/vim/_vimrc
https://github.com/kktt007/archlinux/blob/master/vim/nvim/init.vim
https://github.com/kktt007/kktt/edit/main/single/vscodium.md


https://www.kawabangga.com/posts/3745#comments

Plug 'hrsh7th/vim-vsnip'
Plug 'hrsh7th/vim-vsnip-integ'
https://blog.capytan.net/entry/2020/04/12/my-vim-plugins/
https://ggdg.tkan.dev/post/vim-settings-in-2020/
https://www.cnblogs.com/bugs-killer/p/14685746.html
https://gitee.com/dasky92/vim-config
https://neovim.io/doc/user/lsp.html
https://www.codenong.com/6cf051f709beccf43db4/
