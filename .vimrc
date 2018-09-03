" 必备
set nocompatible

" 显示输入命令
set showcmd 
"  实时搜索
set incsearch
" 显示行数，设置软回车和缩进还有语法
set number
" 配置PEP8风格的缩进
"au BufNewFile,BufRead *.py
 set tabstop=4
 set expandtab
 set autoindent
 set softtabstop=4
 set shiftwidth=4
"set textwidth=79
 set fileformat=unix

" 避免出现多余的空白字符
" au bufRead,BufNewFile *.py,*.pyw,*.c,*.h match BadWhitespace /\s\+$/

" 分屏快捷键
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>


" 搜索时大小写不区分
"set ignorecase
" vim自身命令行智能补全
set wildmenu
<<<<<<< HEAD
=======
"
"
"
" 不加这个在OS X下面delete键用不了
"set backspace=2
>>>>>>> 11ffeec0029b26ec5b1a85148f15f28ef5ee6816

" 开启语法高亮功能
syntax enable
" 允许用指定语法高亮配色方案替换默认方案
let python_highlight_all=1
syntax on

" 编码设置
set encoding=utf-8
set fileencodings=ucs-bom,utf-8,cp936
set fileencoding=utf-8
set termencoding=utf-8

" 基于缩进或语法进行代码折叠
set foldmethod=indent
set foldmethod=syntax
" 启动 vim 时关闭折叠代码
set nofoldenable

" 总是显示状态栏
set laststatus=2
<<<<<<< HEAD
set ttimeoutlen=50
=======
>>>>>>> 11ffeec0029b26ec5b1a85148f15f28ef5ee6816

" 显示光标当前位置
set ruler

" 禁止光标闪烁
set gcr=a:block-blinkon0
" 高亮显示当前行/列
<<<<<<< HEAD
"set cursorline
=======
set cursorline
>>>>>>> 11ffeec0029b26ec5b1a85148f15f28ef5ee6816
"set cursorcolumn

" 高亮显示搜索结果
"set hlsearch

" vim 主题
set background=dark
" colorscheme desert 
" colorscheme solarized
" colorscheme phd 
colorscheme molokai

" vundle 插件管理
filetype on
<<<<<<< HEAD
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'

" 插件
 Bundle "scrooloose/nerdtree"
 Bundle "vim-airline/vim-airline"
 Bundle "vim-airline/vim-airline-themes"
 Bundle "taglist.vim"
" Bundle "Valloric/YouCompleteMe"
=======
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()
 Bundle 'gmarik/vundle'

" 插件
 Bundle "scrooloose/nerdtree"
 Bundle "bling/vim-airline"
 Bundle "taglist.vim"
 Bundle "Valloric/YouCompleteMe"
>>>>>>> 11ffeec0029b26ec5b1a85148f15f28ef5ee6816
 Bundle "Raimondi/delimitMate"
 Bundle "kien/ctrlp.vim"
" Bundle "klen/python-mode"
 Bundle "mattn/emmet-vim"
 Bundle "hail2u/vim-css3-syntax"
 Bundle "pangloss/vim-javascript"
 Bundle "ap/vim-css-color"
 Bundle "mileszs/ack.vim"
 Bundle "davidhalter/jedi-vim"
 Bundle "Yggdroot/indentLine"
 Bundle "szw/vim-tags"

<<<<<<< HEAD
call vundle#end()

" airline 特殊符号
set guifont=Liberation\ Mono\ for\ Powerline\ 10
let g:airline_powerline_fonts = 1
set t_Co=256
" let g:airline_theme = 'dark'
let g:airline_theme="luna"

  if !exists('g:airline_symbols')
    let g:airline_symbols = {}
  endif

  " unicode symbols
  let g:airline_left_sep = '»'
  let g:airline_left_sep = '▶'
  let g:airline_right_sep = '«'
  let g:airline_right_sep = '◀'
  let g:airline_symbols.linenr = '␊'
  let g:airline_symbols.linenr = '␤'
  let g:airline_symbols.linenr = '¶'
  let g:airline_symbols.branch = '⎇'
  let g:airline_symbols.paste = 'ρ'
  let g:airline_symbols.paste = 'Þ'
  let g:airline_symbols.paste = '∥'
  let g:airline_symbols.whitespace = 'Ξ'

  " powerline symbols
  let g:airline_left_sep = ''
  let g:airline_left_alt_sep = ''
  let g:airline_right_sep = ''
  let g:airline_right_alt_sep = ''
  let g:airline_symbols.branch = ''
  let g:airline_symbols.readonly = ''
  let g:airline_symbols.linenr = '☰'
  let g:airline_symbols.maxlinenr = ''
=======
" airline 特殊符号
let g:airline_powerline_fonts = 1
let g:airline_theme = 'dark'
" let g:airline_theme="luna"
>>>>>>> 11ffeec0029b26ec5b1a85148f15f28ef5ee6816

" 使用 taglist  插件查看所有的tag 设置快捷键，速记：tagopen
:nmap <LEADER>to :TlistToggle<CR>
" 使用 NERDTree 插件查看工程文件。设置快捷键，速记：file list
:nmap <LEADER>fl :NERDTreeToggle<CR>
" 设置NERDTree子窗口宽度
let NERDTreeWinSize=30
" 设置NERDTree子窗口位置
let NERDTreeWinPos="left"
" 显示隐藏文件
let NERDTreeShowHidden=0
" NERDTree 子窗口中不显示冗余帮助信息
let NERDTreeMinimalUI=1
" 删除文件时自动删除文件对应 buffer
let NERDTreeAutoDeleteBuffer=1


" YCM 补全菜单配色
" 菜单
 highlight Pmenu ctermfg=White ctermbg=Black
" 选中项
" highlight PmenuSel ctermfg=Blue ctermbg=White
" 补全功能在注释中同样有效
" let g:ycm_complete_in_comments=1
" 允许 vim 加载 .ycm_extra_conf.py 文件，不再提示
" let g:ycm_confirm_extra_conf=0
" 开启 YCM 标签补全引擎
" let g:ycm_collect_identifiers_from_tags_files=1
" let g:ycm_filepath_completion_use_working_dir=1
" 引入 C++ 标准库tags
" set tags+=/data/misc/software/misc./vim/stdcpp.tags
" YCM 集成 OmniCppComplete 补全引擎，设置其快捷键
" inoremap <leader>; <C-x><C-o>
" 补全内容不以分割子窗口形式出现，只显示补全列表
" set completeopt-=preview
" 从第一个键入字符就开始罗列匹配项
" let g:ycm_min_num_of_chars_for_completion=1
" 禁止缓存匹配项，每次都重新生成匹配项
" let g:ycm_cache_omnifunc=0
" 语法关键字补全         
" let g:ycm_seed_identifiers_with_syntax=1
" let g:ycm_error_symbol = '>>'
" let g:ycm_warning_symbol = '>*'


<<<<<<< HEAD
autocmd BufNewFile *.py,*.sh,*.c exec ":call SetTitle()"
"定义函数SetTitle，自动插入文件头
func SetTitle()
    if &filetype == 'python'
        call setline(1, "\#!/usr/bin/env python") 
        call setline(2, "\# -*- encoding:utf-8 -*-") 
        call append(line(".")+1,"")
    endif
    if &filetype == 'sh'
        call setline(1, "\#!/usr/bin/sh") 
        call append(line(".")+1,"")
    endif
    if &filetype == 'c'
        call setline(1,"#include <stdio.h>")
        call append(line(".")+1,"")
    endif
endfunc

" Run code
nmap <F5> :call Compile()<CR>
func! Compile()
    exec "w"
    if &filetype == 'python'
        exec "!python %"
    elseif &filetype == 'c'
        exec "!g++ % -o %<"
        exec "!./%"
    elseif &filetype == 'sh'
        :!bash %
    endif
endfunc

=======
autocmd BufNewFile *.py,*.sh exec ":call SetTitle()"
"定义函数SetTitle，自动插入文件头
func SetTitle()
    if &filetype == 'python'
        call setline(1, "\#!/usr/bin/python") 
        call setline(2, "\# -*- encoding:utf-8 -*-") 
    endif
    if &filetype == 'sh'
        call setline(1, "\#!/usr/bin/sh") 
    endif
    if &filetype == 'c'
        call setline(1,"#include <stdio.h>")
    endif
endfunc
>>>>>>> 11ffeec0029b26ec5b1a85148f15f28ef5ee6816
