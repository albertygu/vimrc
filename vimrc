" All system-wide defaults are set in $VIMRUNTIME/debian.vim and sourced by
" the call to :runtime you can find below.  If you wish to change any of those
" settings, you should do it in this file (/etc/vim/vimrc), since debian.vim
" will be overwritten everytime an upgrade of the vim packages is performed.
" It is recommended to make changes after sourcing debian.vim since it alters
" the value of the 'compatible' option.
" This line should not be removed as it ensures that various options are " properly set to work with the Vim-related packages available in Debian.
runtime! debian.vim

" Uncomment the next line to make Vim more Vi-compatible
" NOTE: debian.vim sets 'nocompatible'.  Setting 'compatible' changes numerous
" options, so any other options should be set AFTER setting 'compatible'.
"set compatible

" Vim5 and later versions support syntax highlighting. Uncommenting the next
" line enables syntax highlighting by default.
if has("syntax")
  syntax on
endif

set incsearch
set number 
set tabstop=8
set hlsearch
set showmatch
set nobackup
set smartindent
set cmdheight=1

"autocmd BufRead * set tw=78
"set textwidth=80 

colo darkblue
set clipboard+=unnamed

""treat long line as break line
map j gj
map k gk

""move between windows
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l

"选中一段文字并全文搜索这段文字
vmap <silent> // y/<C-R>=escape(@", '\\/.*$^~[]')<CR><CR>

"置粘贴模式，这样粘贴过来的程序代码就不会错位了。
set paste 

"" highlight line
set cursorline

"允许在有未保存的修改时切换缓冲区
set hidden 

" 复制当前文件/路径到剪贴板
set clipboard=unnamedplus

"总是显示状态栏
set laststatus=2
"在状态栏显示行号和列号
set ruler
